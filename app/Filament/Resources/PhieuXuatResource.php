<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Models\kho;
use Filament\Forms;
use Filament\Tables;
use App\Models\vattu;
use App\Models\vitri;
use App\Models\tonkho;
use Filament\Forms\Get;
use Filament\Forms\Form;
use App\Models\phieuxuat;
use Filament\Tables\Table;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\chitietphieuxuat;
use Filament\Resources\Resource;
use Filament\Tables\Actions\Action;
use Filament\Forms\Components\Actions\Action as FormAction;
use Filament\Forms\Components\Radio;
use Illuminate\Support\Facades\Auth;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Wizard;
use Illuminate\Support\Facades\Blade;
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
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Guava\FilamentModalRelationManagers\Actions\Table\RelationManagerAction;
use App\Filament\Resources\PhieuXuatResource\RelationManagers\ChitietphieuxuatRelationManager;

class PhieuXuatResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = phieuxuat::class;

    protected static ?string $modelLabel = 'Phiếu xuất';

    protected static ?string $navigationIcon = 'heroicon-o-chevron-double-right';

    protected static ?string $navigationLabel = 'Phiếu xuất';

    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';

    protected static ?string $slug = 'phieuxuat';

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

    public static array $status = [
        '0' => 'Đang xử lý',
        '1' => 'Đã xử lý',
        '2' => 'Đã huỷ',
    ];

    public static array $lydo = [
        '0' => 'Xuất sản xuất',
        '1' => 'Xuất bán',
    ];

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
                    Wizard\Step::make('Thông tin phiếu xuất')
                        ->schema([
                            Section::make('Thông tin chính')
                                ->description('Thông tin chi tiết phiếu xuất')
                                ->aside()
                                ->schema([
                                    Radio::make('LyDo')
                                        ->required()
                                        ->inline()
                                        ->default('0')
                                        ->live()
                                        ->label('Lý do xuất hàng?')
                                        ->options(self::$lydo),

                                    TextInput::make('id')
                                        ->placeholder('eg: PX001/xx/xx')
                                        ->unique(ignoreRecord: true)
                                        ->required()
                                        ->label('Mã phiếu xuất')
                                        ->prefixAction(
                                            FormAction::make('suggest')
                                                ->icon('heroicon-m-sparkles')
                                                ->requiresConfirmation()
                                                ->color('info')
                                                ->modalHeading('Tạo mã phiếu nhập')
                                                ->modalDescription('Đặt mã phiếu nhập tự động theo định dạng PNddmmyy')
                                                ->action(function ($set) {
                                                    $newId = 'PX';
                                                    $set('id', $newId . now()->format('dmy'));
                                                })
                                        ),

                                    Select::make('user_id')
                                        ->label('Người tạo phiếu')
                                        ->relationship('user', 'name')
                                        ->default(fn(): int => Auth::user()->id)
                                        ->required()
                                        ->preload()
                                        ->searchable(),

                                    Select::make('khachhang_id')
                                        ->label('Khách hàng')
                                        ->required()
                                        ->relationship('khachhang', 'TenKH')
                                        ->preload()
                                        ->hidden(fn(Get $get): bool => $get('LyDo') == '0')
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

                                    Select::make('kho_id')
                                        ->label('Kho')
                                        ->relationship('kho', 'TenKho')
                                        ->required()
                                        ->live()
                                        ->preload()
                                        ->searchable(),
                                ]),

                            Section::make('Thông tin phụ')
                                ->aside()
                                ->description('Thông tin phụ của phiếu xuất')
                                ->schema([
                                    Forms\Components\DatePicker::make('NgayXuat')
                                        ->required()
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
                    Wizard\Step::make('Thông tin chi tiết phiếu xuất')
                        ->schema([
                            Repeater::make('dsvattuxuat')
                                ->required()
                                ->validationMessages([
                                    'required' => 'Danh sách vật tư xuất không được trống.',
                                ])
                                // ->hidden(fn (Get $get): bool => $get('dsvattuxuat') == null)
                                ->reorderable(false)
                                ->addActionLabel('Thêm vật tư')
                                ->addAction(function (Forms\Components\Actions\Action $action, $get): Forms\Components\Actions\Action {
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
                                ->label('Danh sách vật tư xuất')
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
                                        ->minValue(0)
                                        ->maxValue(fn(Get $get): int => (int) $get('soluongkhadung')),
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
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->defaultSort('TrangThai', 'asc')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu'),
                TextColumn::make('khachhang.TenKH')
                    ->placeholder('N/A')
                    ->label('Khách hàng'),
                TextColumn::make('NgayXuat')
                    ->label('Ngày xuất')
                    ->date('d/m/Y')
                    ->searchable(),

                TextColumn::make('user.name')
                    ->label('Người nhập')
                    ->searchable(),
                TextColumn::make('kho.TenKho')
                    ->label('Kho'),
                TextColumn::make('LyDo')
                    ->label('Lý do')
                    ->formatStateUsing(fn($record) => $record->LyDo == 0 ? 'Xuất sản xuất' : 'Xuất bán')
                    ->badge()
                    ->color(fn($record): string => $record->LyDo == 0 ? 'info' : 'success')
                    ->searchable(),
                TextColumn::make('TrangThai')
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
                    })
                    ->label('Trạng thái'),

                TextColumn::make('GhiChu')
                    ->wrap()
                    ->label('Ghi chú'),

            ])
            ->filters([
                Tables\Filters\SelectFilter::make('TrangThai')
                    ->label('Trạng thái')
                    ->options(self::$status),
            ])
            ->actions([
                ActionGroup::make([
                    Tables\Actions\ViewAction::make()->color('info'),
                    Tables\Actions\EditAction::make()->color('primary'),
                    Action::make('duyetphieuxuat')
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieuxuat_phieu::xuat'))
                        ->hidden(fn($record): bool => ! $record->TrangThai == 0)
                        ->label('Duyệt phiếu xuất')
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

                    Action::make('huyphieuxuat')
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieuxuat_phieu::xuat'))
                        ->label('Huỷ phiếu xuất')
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

                    RelationManagerAction::make('chitietphieuxuat')
                        ->label('Xem DS vật tư xuất')
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
            'edit' => Pages\EditPhieuXuat::route('/{record}/edit'),
        ];
    }
}
