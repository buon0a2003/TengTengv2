<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Models\kho;
use Filament\Tables;
use App\Models\vattu;
use App\Models\vitri;
use App\Models\tonkho;
use Filament\Forms\Get;
use Filament\Forms\Form;
use App\Models\phieuxuat;
use Filament\Tables\Table;
use App\Models\chitietphieuxuat;
use Filament\Resources\Resource;
use Filament\Tables\Actions\Action;
use Filament\Forms\Components\Radio;
use Illuminate\Support\Facades\Auth;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Support\Exceptions\Cancel;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Notifications\Notification;
use Filament\Tables\Actions\ActionGroup;
use Filament\Forms\Components\DatePicker;
use Filament\Tables\Filters\SelectFilter;
use Filament\Forms\Components\Wizard\Step;
use App\Filament\Resources\PhieuXuatResource\Pages;
use Filament\Forms\Components\Actions\Action as FormAction;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Guava\FilamentModalRelationManagers\Actions\Table\RelationManagerAction;
use App\Filament\Resources\PhieuXuatResource\RelationManagers\ChitietphieuxuatRelationManager;
use App\Models\User;

class PhieuXuatResource extends Resource implements HasShieldPermissions
{
    public static array $status = [
        '0' => 'Đang xử lý',
        '1' => 'Đã xử lý',
        '2' => 'Đã huỷ',
    ];

    public static array $lydo = [
        '0' => 'Xuất sản xuất',
        '1' => 'Xuất bán',
        '2' => 'Xuất khác',
    ];

    protected static ?string $model = phieuxuat::class;

    protected static ?string $modelLabel = 'Phiếu xuất';

    protected static ?string $navigationIcon = 'heroicon-o-chevron-double-right';

    protected static ?string $activeNavigationIcon = 'heroicon-s-chevron-double-right';

    protected static ?string $navigationLabel = 'Phiếu xuất';

    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';

    protected static ?string $slug = 'phieuxuat';

    protected static ?int $navigationSort = 2;

    public static function getPermissionPrefixes(): array
    {
        return [
            'view',
            'view_any',
            'create',
            'update',
            'delete',
            'delete_any',
            'duyetphieuxuat',
        ];
    }

    public static function getNavigationBadgeTooltip(): ?string
    {
        return 'Số lượng phiếu xuất đang xử lý';
    }

    public static function getBreadcrumb(): string
    {
        return 'Phiếu xuất';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Wizard::make([
                    Step::make('Thông tin phiếu xuất')
                        ->schema([
                            Section::make('Thông tin chính')
                                ->description('Thông tin chi tiết phiếu xuất')
                                ->aside()
                                ->schema([
                                    Radio::make('LyDo')->label('Lý do xuất hàng?')
                                        ->required()
                                        ->inline()
                                        ->default('0')
                                        ->live()
                                        ->options(self::$lydo),

                                    TextInput::make('id')->label('Mã phiếu xuất')
                                        ->placeholder('eg: PXddmmyy-XXX')
                                        ->unique(ignoreRecord: true)
                                        ->required()
                                        ->prefixAction(
                                            FormAction::make('suggest')
                                                ->icon('heroicon-m-sparkles')
                                                ->requiresConfirmation()
                                                ->color('info')
                                                ->modalHeading('Tạo mã phiếu xuất')
                                                ->modalDescription('Đặt mã phiếu xuất tự động theo định dạng PXddmmyy-XXX')
                                                ->action(function ($set) {
                                                    $today = now()->format('dmy');
                                                    $lastRecord = phieuxuat::where('id', 'like', "PX{$today}-%")
                                                        ->orderBy('id', 'desc')
                                                        ->first();

                                                    $sequence = 1;
                                                    if ($lastRecord) {
                                                        $lastSequence = (int) substr($lastRecord->id, -3);
                                                        $sequence = $lastSequence + 1;
                                                    }

                                                    $newId = sprintf("PX%s-%03d", $today, $sequence);
                                                    $set('id', $newId);
                                                })
                                        ),

                                    Select::make('user_id')->label('Người tạo phiếu')
                                        ->relationship('user', 'name')
                                        ->default(fn(): int => Auth::user()->id)
                                        ->required()
                                        ->preload()
                                        ->searchable(),

                                    Select::make('giamsat_id')
                                        ->label('Người giám sát')
                                        ->relationship('giamsat', 'name')
                                        ->preload()
                                        ->searchable()
                                        ->required()
                                        ->options(function () {
                                            return User::role('Giám sát viên')->pluck('name', 'id');
                                        }),

                                    Select::make('khachhang_id')->label('Khách hàng')
                                        ->required()
                                        ->relationship('khachhang', 'TenKH')
                                        ->preload()
                                        ->visible(fn(Get $get): bool => $get('LyDo') == '1')
                                        ->searchable()
                                        ->createOptionForm([
                                            Section::make('Thông tin bắt buộc')
                                                ->description('Thông tin chi tiết của khách hàng mới')
                                                ->aside()
                                                ->schema([
                                                    TextInput::make('TenKH')->label('Tên khách hàng')->required(),
                                                    TextInput::make('Sdt')->label('Số điện thoại')->required()->unique(ignoreRecord: true)
                                                        ->prefix('+84')
                                                        ->regex('/^(0\d{9}|[1-9]\d{8})$/')
                                                        ->validationMessages([
                                                            'regex' => 'Số điện thoại sai quy cách.',
                                                        ])
                                                        ->validationMessages([
                                                            'unique' => 'Số điện thoại này đã tồn tại.',
                                                        ]),
                                                    TextInput::make('DiaChi')->label('Địa chỉ')->required(),
                                                ])->columnSpanFull(),

                                            Section::make('Thông tin không bắt buộc')
                                                ->aside()
                                                ->schema([
                                                    TextInput::make('Email'),
                                                    TextInput::make('GhiChu')->label('Ghi chú'),
                                                ])->columnSpanFull(),
                                        ]),
                                    Hidden::make('kho_id')
                                        ->label('Mã kho')
                                        ->required()
                                        ->hidden()
                                        ->live(),

                                    TextInput::make('TenKho')
                                        ->label('Kho')
                                        ->required()
                                        ->readOnly()
                                        ->prefixAction(
                                            FormAction::make('openKhoModal')
                                                ->label('Chọn kho')
                                                ->icon('heroicon-m-magnifying-glass')
                                                ->modalHeading('Danh sách kho')
                                                ->modalContent(
                                                    fn(Get $get) => view('filament.kholist', ['LyDoxuat' => $get('LyDo'), 'LyDonhap' => ''])
                                                )
                                                ->action(null)
                                                ->modalCancelAction(false)
                                                ->modalSubmitActionLabel('Xong')
                                        ),
                                ]),

                            Section::make('Thông tin phụ')
                                ->aside()
                                ->description('Thông tin phụ của phiếu xuất')
                                ->schema([
                                    DatePicker::make('NgayXuat')
                                        ->required()
                                        ->default(now())
                                        ->label('Ngày xuất'),

                                    Textarea::make('GhiChu')
                                        ->label('Ghi chú'),
                                ]),
                            Section::make('Trạng thái')
                                ->description('Trạng thái của phiếu xuất')
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
                    Step::make('Thông tin chi tiết phiếu xuất')
                        ->schema([
                            Repeater::make('dsvattuxuat')->label('Danh sách vật tư xuất')
                                ->required()
                                ->validationMessages([
                                    'required' => 'Danh sách vật tư xuất không được trống.',
                                ])
                                // ->hidden(fn (Get $get): bool => $get('dsvattuxuat') == null)
                                ->reorderable(false)
                                ->addActionLabel('Thêm vật tư')
                                ->addAction(function (FormAction $action, $get): FormAction {
                                    return $action->modalContent(
                                        view('filament.tonkholist', [
                                            'LyDo' => $get('LyDo') ?? '',
                                            'kho_id' => $get('kho_id') ?? '',
                                        ])
                                    )
                                        ->action(null)
                                        ->modalWidth('7xl')
                                        ->modalCancelAction(false)
                                        ->modalSubmitActionLabel('Done');
                                })
                                ->schema([
                                    TextInput::make('vattu_id')->hidden()->live(),
                                    TextInput::make('kho_id')->hidden()->live(),
                                    TextInput::make('vitri_id')->hidden()->live(),
                                    TextInput::make('tonkho_id')->hidden(),
                                    TextInput::make('TenVT')
                                        ->readOnly(true)
                                        ->label('Vật tư')
                                        ->required(),
                                    TextInput::make('soluongkhadung')->label('Số lượng khả dụng')
                                        ->readOnly(true)
                                        ->suffix(fn(Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                                        ->numeric(),
                                    TextInput::make('soluong')->label('Số lượng')
                                        ->required()
                                        ->suffix(fn(Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                                        ->numeric()
                                        ->minValue(1)
                                        ->lte('soluongkhadung'),
                                    Textarea::make('ghichu')->rows(2)->label('Ghi chú'),
                                ])
                                ->defaultItems(0)
                                ->grid(3)
                                ->itemLabel(function ($state, $get): string {
                                    $kho = kho::find($state['kho_id']);
                                    $vitri = vitri::find($state['vitri_id']);

                                    return "{$kho->TenKho} - {$vitri->Mota}" ?? 'Lỗi';
                                }),
                        ])->visibleOn('create'),
                ])->columnSpanFull()->skippable(),
                // skipable dùng để test thôi hết test thì xóa
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->modifyQueryUsing(function ($query) {
                if (! Auth::user()->hasRole('super_admin')) {
                    $query->where(function ($query) {
                        $query->where('user_id', Auth::id())
                            ->orWhere('giamsat_id', Auth::id());
                    });
                }
            })
            ->defaultSort('TrangThai', 'asc')
            ->columns([
                TextColumn::make('id')->label('Mã phiếu'),
                TextColumn::make('khachhang.TenKH')->label('Khách hàng')
                    ->placeholder('N/A'),
                TextColumn::make('NgayXuat')->label('Ngày xuất')
                    ->date('d/m/Y')
                    ->searchable(),

                TextColumn::make('user.name')->label('Người nhập')
                    ->searchable(),
                TextColumn::make('giamsat.name')->label('Người giám sát')
                    ->searchable(),
                TextColumn::make('kho.TenKho')->label('Kho'),
                TextColumn::make('LyDo')->label('Lý do')
                    ->badge()
                    ->formatStateUsing(fn($record) => self::$lydo[$record->LyDo] ?? 'N/A')
                    ->color(fn($record): string => match ($record->LyDo) {
                        0 => 'info',
                        1 => 'success',
                        2 => 'warning',
                        default => 'gray'
                    })
                    ->searchable(),
                TextColumn::make('TrangThai')->label('Trạng thái')
                    ->alignCenter()
                    ->formatStateUsing(fn($record) => match ($record->TrangThai) {
                        0 => 'Đang xử lý',
                        1 => 'Đã xử lý',
                        2 => 'Đã huỷ',
                        default => 'N/A'
                    })
                    ->badge()
                    ->color(fn($record): string => match ($record->TrangThai) {
                        0 => 'warning',
                        1 => 'success',
                        2 => 'danger',
                        default => ''
                    }),

                TextColumn::make('GhiChu')->label('Ghi chú')
                    ->wrap(),

            ])
            ->filters([
                SelectFilter::make('TrangThai')->label('Trạng thái')
                    ->options(self::$status),
            ])
            ->actions([
                ActionGroup::make([
                    Tables\Actions\ViewAction::make()->color('info'),
                    Tables\Actions\EditAction::make()->color('primary'),
                    Action::make('duyetphieuxuat')->label('Duyệt phiếu xuất')
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieuxuat_phieu::xuat'))
                        ->hidden(fn($record): bool => ! $record->TrangThai == 0)
                        ->action(
                            function (phieuxuat $record): void {
                                $chitietphieuxuatRecord = chitietphieuxuat::where('phieuxuat_id', $record->id)->get();
                                if (! $chitietphieuxuatRecord->isEmpty()) {

                                    $chitietphieuxuatRecord->each(function ($item) {
                                        $tonkho = tonkho::find($item->tonkho_id);
                                        if ($tonkho && $tonkho->SoLuong >= $item->SoLuong) {
                                            $tonkho->SoLuong -= $item->SoLuong;
                                            $tonkho->NgayCapNhat = now();
                                            $tonkho->save();
                                        } else {
                                            Notification::make()
                                                ->title('Lỗi update tồn kho')
                                                ->body('Không tìm thấy tồn kho hoặc số lượng không đủ!')
                                                ->danger()
                                                ->send();

                                            throw new Cancel();
                                        }
                                    });
                                    $record->update(['TrangThai' => 1]);
                                    Notification::make()
                                        ->title('Thành công')
                                        ->body('Đã duyệt phiếu xuất & update tồn kho!')
                                        ->success()
                                        ->send();
                                } else {
                                    Notification::make()
                                        ->title('Thất bại')
                                        ->body('Phiếu xuất không có vật tư nào!')
                                        ->danger()
                                        ->send();
                                }
                            }
                        )
                        ->color('success')
                        ->icon('heroicon-o-check'),

                    Action::make('huyphieuxuat')->label('Huỷ phiếu xuất')
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieuxuat_phieu::xuat'))
                        ->action(function ($record) {
                            $record->update(['TrangThai' => 2]);
                            Notification::make()
                                ->title('Đã huỷ phiếu xuất!')
                                ->danger()
                                ->send();
                        })
                        ->hidden(fn($record): bool => ! $record->TrangThai == 0)
                        ->color('danger')
                        ->icon('heroicon-o-x-circle'),

                    RelationManagerAction::make('chitietphieuxuat')->label('Xem DS vật tư xuất')
                        ->icon('heroicon-o-list-bullet')
                        ->color('amber')
                        ->relationManager(ChitietphieuxuatRelationManager::make()),

                ]),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    // Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            ChitietphieuxuatRelationManager::make(),
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPhieuXuats::route('/'),
            'create' => Pages\CreatePhieuXuat::route('/create'),
            'view' => Pages\ViewPhieuXuat::route('/{record}'),
            'edit' => Pages\EditPhieuXuat::route('/{record}/edit'),
        ];
    }
}
