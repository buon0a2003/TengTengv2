<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuDieuChuyenResource\Pages;
use App\Filament\Resources\PhieuDieuChuyenResource\RelationManagers\ChitietphieudieuchuyenRelationManager;
use App\Models\chitietphieudieuchuyen;
use App\Models\kho;
use App\Models\phieudieuchuyen;
use App\Models\tonkho;
use App\Models\User;
use App\Models\vattu;
use App\Models\vitri;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Exception;
use Filament\Forms\Components\Actions\Action as FormAction;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Radio;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Components\Wizard\Step;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Support\Exceptions\Cancel;
use Filament\Tables;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Guava\FilamentModalRelationManagers\Actions\Table\RelationManagerAction;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class PhieuDieuChuyenResource extends Resource implements HasShieldPermissions
{
    public static array $status = [
        '0' => 'Đang xử lý',
        '1' => 'Đã xử lý',
        '2' => 'Đã huỷ',
    ];

    protected static ?string $model = phieudieuchuyen::class;

    protected static ?string $modelLabel = 'Phiếu điều chuyển';

    protected static ?string $navigationIcon = 'heroicon-o-arrows-right-left';

    protected static ?string $activeNavigationIcon = 'heroicon-s-arrows-right-left';

    protected static ?string $navigationLabel = 'Phiếu điều chuyển';

    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';

    protected static ?string $slug = 'phieudieuchuyen';

    protected static ?int $navigationSort = 3;

    public static function getPermissionPrefixes(): array
    {
        return [
            'view',
            'view_any',
            'create',
            'update',
            'delete',
            'delete_any',
            'duyetphieudieuchuyen',
        ];
    }

    public static function getNavigationBadgeTooltip(): ?string
    {
        return 'Số lượng phiếu điều chuyển đang xử lý';
    }

    public static function getBreadcrumb(): string
    {
        return 'Phiếu điều chuyển';
    }

    public static function getNavigationBadge(): ?string
    {
        return (string) static::getModel()::where('TrangThai', 0)->count();
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Wizard::make([
                    Step::make('Thông tin phiếu điều chuyển')
                        ->schema([
                            Section::make('Thông tin chính')
                                ->description('Thông tin chi tiết phiếu điều chuyển')
                                ->aside()
                                ->schema([
                                    TextInput::make('id')->label('Mã phiếu điều chuyển')
                                        ->placeholder('eg: PDCddmmyy-XXX')
                                        ->unique(ignoreRecord: true)
                                        ->required()
                                        ->prefixAction(
                                            FormAction::make('suggest')
                                                ->icon('heroicon-m-sparkles')
                                                ->requiresConfirmation()
                                                ->color('info')
                                                ->modalHeading('Tạo mã phiếu điều chuyển')
                                                ->modalDescription('Đặt mã phiếu điều chuyển tự động theo định dạng PDCddmmyy-XXX')
                                                ->action(function ($set) {
                                                    $today = now()->format('dmy');
                                                    $lastRecord = phieudieuchuyen::where('id', 'like', "PDC{$today}-%")
                                                        ->orderBy('id', 'desc')
                                                        ->first();

                                                    $sequence = 1;
                                                    if ($lastRecord) {
                                                        $lastSequence = (int) mb_substr($lastRecord->id, -3);
                                                        $sequence = $lastSequence + 1;
                                                    }

                                                    $newId = sprintf('PDC%s-%03d', $today, $sequence);
                                                    $set('id', $newId);
                                                })
                                        ),

                                    Select::make('user_id')->label('Người tạo phiếu')
                                        ->relationship('user', 'name')
                                        ->default(fn (): int => Auth::user()->id)
                                        ->required()
                                        ->preload()
                                        ->searchable()
                                        ->disabled()
                                        ->dehydrated(),

                                    Select::make('giamsat_id')->label('Người giám sát')
                                        ->relationship('giamsat', 'name')
                                        ->required()
                                        ->preload()
                                        ->options(function () {
                                            try {
                                                return User::role('Giám sát viên')->pluck('name', 'id');
                                            } catch (Exception $e) {
                                                return [];
                                            }
                                        })
                                        ->searchable(),

                                    Select::make('MaKhoNguon')->label('Kho nguồn')
                                        ->relationship('khonguon', 'TenKho')
                                        ->required()
                                        ->live()
                                        ->preload()
                                        ->searchable(),

                                    Select::make('MaKhoDich')->label('Kho đích')
                                        ->relationship('khodich', 'TenKho')
                                        ->required()
                                        ->live()
                                        ->preload()
                                        ->searchable()
                                        ->different('MaKhoNguon')
                                        ->validationMessages([
                                            'different' => 'Kho đích phải khác kho nguồn',
                                        ])
                                        ->afterStateUpdated(function ($state, $get, $set) {
                                            if ($state === $get('MaKhoNguon')) {
                                                $set('MaKhoDich', null);
                                                Notification::make()
                                                    ->warning()
                                                    ->title('Cảnh báo')
                                                    ->body('Kho đích không được trùng với kho nguồn')
                                                    ->send();
                                            }
                                        }),
                                ]),

                            Section::make('Thông tin phụ')
                                ->aside()
                                ->description('Thông tin phụ của phiếu điều chuyển')
                                ->schema([
                                    DatePicker::make('NgayLap')
                                        ->required()
                                        ->default(now())
                                        ->label('Ngày lập'),

                                    Textarea::make('GhiChu')
                                        ->label('Ghi chú'),
                                ]),
                            Section::make('Trạng thái')
                                ->description('Trạng thái của phiếu điều chuyển')
                                ->aside()
                                ->visibleOn('edit')
                                ->schema([
                                    Radio::make('TrangThai')
                                        ->label('Trạng thái')
                                        ->inline()
                                        ->visibleOn('edit')
                                        ->options(self::$status),
                                ]),
                        ]),
                    Step::make('Thông tin chi tiết phiếu điều chuyển')
                        ->schema([
                            Repeater::make('dsvattudieuhuyen')->label('Danh sách vật tư điều chuyển')
                                ->required()
                                ->validationMessages([
                                    'required' => 'Danh sách vật tư điều chuyển không được trống.',
                                ])
                                ->reorderable(false)
                                ->addActionLabel('Thêm vật tư')
                                ->addAction(function (FormAction $action, $get): FormAction {
                                    return $action->modalContent(
                                        view('filament.tonkholist', [
                                            'LyDo' => '',
                                            'kho_id' => $get('MaKhoNguon') ?? '',
                                        ])
                                    )
                                        ->action(null)
                                        ->modalWidth('7xl')
                                        ->modalCancelAction(false)
                                        ->modalSubmitActionLabel('Xong');
                                })
                                ->schema([
                                    Hidden::make('vattu_id')->live(),
                                    Hidden::make('kho_id')->live(),
                                    Hidden::make('vitri_id')->live(),
                                    Hidden::make('tonkho_id'),
                                    TextInput::make('TenVT')
                                        ->readOnly(true)
                                        ->label('Vật tư')
                                        ->required(),
                                    TextInput::make('soluongkhadung')->label('Số lượng khả dụng')
                                        ->readOnly(true)
                                        ->suffix(fn (Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                                        ->numeric(),
                                    TextInput::make('soluong')->label('Số lượng')
                                        ->required()
                                        ->suffix(fn (Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                                        ->numeric()
                                        ->minValue(0),
                                    Select::make('vitri_dich_id')->label('Vị trí đích')
                                        ->options(function ($get) {
                                            $khoDich = $get('../../MaKhoDich');

                                            return vitri::where('kho_id', $khoDich)->pluck('Mota', 'id')->toArray();
                                        })
                                        ->searchable()
                                        ->required()
                                        ->helperText('Vị trí đặt vật tư tại kho đích'),
                                    Textarea::make('ghichu')->rows(2)->label('Ghi chú'),
                                ])
                                ->defaultItems(0)
                                ->grid(3)
                                ->itemLabel(function ($state): string {
                                    $kho = kho::find($state['kho_id']);
                                    $vitri = vitri::find($state['vitri_id']);

                                    return "{$kho->TenKho} - {$vitri->Mota}" ?? 'Lỗi';
                                }),
                        ])->visibleOn('create'),
                ])->columnSpanFull()->skippable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->modifyQueryUsing(function ($query) {
                if (! Auth::user()->hasRole('super_admin')) {
                    $query->where(function ($query) {
                        $query->Where('giamsat_id', Auth::id());
                    });
                }
            })
            ->defaultSort(function (Builder $query): Builder {
                return $query
                    ->orderBy('TrangThai', 'asc')
                    ->orderBy('NgayLap', 'desc');
            })
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('NgayLap')
                    ->label('Ngày lập')
                    ->alignCenter()
                    ->date('d/m/Y')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('user.name')
                    ->label('Người tạo')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('giamsat.name')
                    ->label('Người giám sát')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('khonguon.TenKho')
                    ->label('Kho nguồn')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('khodich.TenKho')
                    ->label('Kho đích')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('TrangThai')
                    ->label('Trạng thái')
                    ->alignCenter()
                    ->formatStateUsing(fn ($record) => match ($record->TrangThai) {
                        0 => 'Đang xử lý',
                        1 => 'Đã xử lý',
                        2 => 'Đã huỷ',
                        default => 'N/A'
                    })
                    ->icon(fn ($record): string => match ($record->TrangThai) {
                        0 => 'heroicon-o-clock',
                        1 => 'heroicon-o-check-circle',
                        2 => 'heroicon-o-x-circle',
                        default => ''
                    })
                    ->badge()
                    ->color(fn ($record): string => match ($record->TrangThai) {
                        0 => 'warning',
                        1 => 'success',
                        2 => 'danger',
                        default => ''
                    })
                    ->sortable(),

                TextColumn::make('GhiChu')
                    ->label('Ghi chú')
                    ->alignLeft()
                    ->limit(50)
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->wrap()
                    ->tooltip(fn ($record) => $record->GhiChu),
            ])
            ->filters([
                SelectFilter::make('TrangThai')->label('Trạng thái')
                    ->options(self::$status),
            ])
            ->actions([
                ActionGroup::make([
                    Tables\Actions\ViewAction::make()->color('info'),
                    Tables\Actions\EditAction::make()->color('primary'),
                    Action::make('duyetphieudieuchuyen')->label('Duyệt phiếu điều chuyển')
                        // ->authorize(fn(): bool => Auth::user()->can('duyetphieudieuchuyen_phieu::dieu::chuyen'))
                        ->visible(fn ($record): bool => $record->TrangThai == 0)
                        ->action(
                            function (phieudieuchuyen $record): void {
                                $chitietphieudieuchuyenRecord = chitietphieudieuchuyen::where('phieudieuchuyen_id', $record->id)->get();
                                if (! $chitietphieudieuchuyenRecord->isEmpty()) {

                                    $chitietphieudieuchuyenRecord->each(function ($item) use ($record) {
                                        // Tìm tồn kho nguồn
                                        $tonkhoNguon = tonkho::find($item->tonkho_id);

                                        if ($tonkhoNguon && $tonkhoNguon->SoLuong >= $item->SoLuong) {
                                            // Giảm số lượng ở kho nguồn
                                            $tonkhoNguon->SoLuong -= $item->SoLuong;
                                            $tonkhoNguon->NgayCapNhat = now();
                                            $tonkhoNguon->save();

                                            // Tìm hoặc tạo tồn kho đích
                                            $tonkhoDich = tonkho::where('kho_id', $record->MaKhoDich)
                                                ->where('vattu_id', $item->vattu_id)
                                                ->where('vitri_id', $item->vitri_dich_id)
                                                ->first();

                                            if ($tonkhoDich) {
                                                // Cộng số lượng vào kho đích nếu đã có
                                                $tonkhoDich->SoLuong += $item->SoLuong;
                                                $tonkhoDich->NgayCapNhat = now();
                                                $tonkhoDich->save();
                                            } else {
                                                // Tạo mới tồn kho ở kho đích nếu chưa có
                                                if (! $item->vitri_dich_id) {
                                                    Notification::make()
                                                        ->title('Lỗi')
                                                        ->body('Chưa chọn vị trí đích cho một số vật tư')
                                                        ->danger()
                                                        ->send();
                                                    throw new Cancel();
                                                }

                                                tonkho::create([
                                                    'vattu_id' => $item->vattu_id,
                                                    'kho_id' => $record->MaKhoDich,
                                                    'vitri_id' => $item->vitri_dich_id,
                                                    'SoLuong' => $item->SoLuong,
                                                    'NgayCapNhat' => now(),
                                                ]);
                                            }
                                        } else {
                                            Notification::make()
                                                ->title('Lỗi chuyển kho')
                                                ->body('Không tìm thấy tồn kho nguồn hoặc số lượng không đủ!')
                                                ->danger()
                                                ->send();

                                            throw new Cancel();
                                        }
                                    });
                                    $record->update(['TrangThai' => 1]);
                                    Notification::make()
                                        ->title('Thành công')
                                        ->body('Đã duyệt phiếu điều chuyển & update tồn kho!')
                                        ->success()
                                        ->send();
                                } else {
                                    Notification::make()
                                        ->title('Thất bại')
                                        ->body('Phiếu điều chuyển không có vật tư nào!')
                                        ->danger()
                                        ->send();
                                }
                            }
                        )
                        ->color('success')
                        ->icon('heroicon-o-check'),

                    Action::make('huyphieudieuchuyen')->label('Huỷ phiếu điều chuyển')
                        ->authorize(fn (): bool => Auth::user()->can('duyetphieudieuchuyen_phieu::dieu::chuyen'))
                        ->action(function ($record) {
                            $record->update(['TrangThai' => 2]);
                            Notification::make()
                                ->title('Đã huỷ phiếu điều chuyển!')
                                ->danger()
                                ->send();
                        })
                        ->hidden(fn ($record): bool => ! $record->TrangThai == 0)
                        ->color('danger')
                        ->icon('heroicon-o-x-circle'),

                    RelationManagerAction::make('chitietphieudieuchuyen')->label('Xem DS vật tư chuyển')
                        ->icon('heroicon-o-list-bullet')
                        ->color('amber')
                        ->relationManager(ChitietphieudieuchuyenRelationManager::make()),

                ]),
            ])
            ->bulkActions([
                //
            ]);
    }

    public static function getRelations(): array
    {
        return [
            ChitietphieudieuchuyenRelationManager::make(),
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPhieuDieuChuyens::route('/'),
            'create' => Pages\CreatePhieuDieuChuyen::route('/create'),
            'view' => Pages\ViewPhieuDieuChuyen::route('/{record}'),
            'edit' => Pages\EditPhieuDieuChuyen::route('/{record}/edit'),
        ];
    }
}
