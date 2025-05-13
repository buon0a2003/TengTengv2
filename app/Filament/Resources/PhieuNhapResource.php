<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuNhapResource\Pages;
use App\Filament\Resources\PhieuNhapResource\Pages\CreatePhieuNhap;
use App\Filament\Resources\PhieuNhapResource\Pages\EditPhieuNhap;
use App\Filament\Resources\PhieuNhapResource\Pages\ListPhieuNhaps;
use App\Filament\Resources\PhieuNhapResource\RelationManagers\ChitietphieunhapRelationManager;
use App\Models\chitietphieunhap;
use App\Models\phieunhap;
use App\Models\tonkho;
use App\Models\vattu;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Forms\Components\Actions\Action as FormAction;
use Filament\Forms\Components\DatePicker;
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
use Filament\Tables;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Guava\FilamentModalRelationManagers\Actions\Table\RelationManagerAction;
use Illuminate\Support\Facades\Auth;

class PhieuNhapResource extends Resource implements HasShieldPermissions
{
    public static array $status = [
        '0' => 'Đang xử lý',
        '1' => 'Đã xử lý',
        '2' => 'Đã huỷ',
    ];

    public static array $lydo = [
        '0' => 'Nhập thành phẩm',
        '1' => 'Nhập nguyên vật liệu',
        '2' => 'Nhập hàng huỷ',
    ];

    protected static ?string $model = phieunhap::class;

    protected static ?string $modelLabel = 'Phiếu nhập';

    protected static ?string $navigationIcon = 'heroicon-o-chevron-double-left';

    protected static ?string $activeNavigationIcon = 'heroicon-s-chevron-double-left';

    protected static ?string $navigationLabel = 'Phiếu nhập';

    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';

    protected static ?string $slug = 'phieunhap';

    protected static ?int $navigationSort = 2;

    public static function getBreadcrumb(): string
    {
        return 'Phiếu nhập';
    }

    // public static function getNavigationBadge(): ?string
    // {
    //     return (string) static::getModel()::where('TrangThai', 0)->count();
    // }

    public static function getPermissionPrefixes(): array
    {
        return [
            'view',
            'view_any',
            'create',
            'update',
            'delete',
            'delete_any',
            'duyetphieunhap',
        ];
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Wizard::make([
                    Step::make('Thông tin phiếu nhập')
                        ->schema([
                            Section::make('Thông tin chính')
                                ->description('Thông tin chi tiết phiếu nhập')
                                ->aside()
                                ->schema([
                                    Radio::make('LyDo')
                                        // ->required()
                                        ->inline()
                                        ->default('0')
                                        ->live()
                                        ->label('Lý do nhập hàng?')
                                        ->options(self::$lydo),

                                    TextInput::make('id')
                                        ->placeholder('eg: PN001/xx/xx')
                                        ->unique(ignoreRecord: true)
                                        // ->required()
                                        ->label('Mã phiếu nhập')
                                        ->prefixAction(
                                            FormAction::make('suggest')
                                                ->icon('heroicon-m-sparkles')
                                                ->requiresConfirmation()
                                                ->color('info')
                                                ->modalHeading('Tạo mã phiếu nhập')
                                                ->modalDescription('Đặt mã phiếu nhập tự động theo định dạng PNddmmyy')
                                                ->action(function ($set) {
                                                    $newId = 'PN';
                                                    $set('id', $newId . now()->format('dmy'));
                                                })
                                        ),

                                    Select::make('user_id')
                                        ->label('Người tạo phiếu')
                                        ->relationship('user', 'name')
                                        ->default(fn(): int => Auth::user()->id)
                                        // ->required()
                                        ->preload()
                                        ->searchable(),

                                    Select::make('nhacungcap_id')
                                        ->label('Nhà cung cấp')
                                        ->relationship('nhacungcap', 'TenNCC')
                                        ->preload()
                                        ->hidden(fn(Get $get): bool => $get('LyDo') == '0' || $get('LyDo') == '2')
                                        ->searchable()
                                        ->createOptionForm([
                                            Section::make('Thông tin bắt buộc')
                                                ->description('Nhập thông tin chi tiết nhà cung cấp')
                                                ->aside()
                                                ->schema([
                                                    TextInput::make('TenNCC')
                                                        ->required()
                                                        ->label('Tên')
                                                        ->unique(),
                                                    TextInput::make('Sdt')
                                                        ->prefix('+84')
                                                        ->regex('/^(0\d{9}|[1-9]\d{8})$/')
                                                        ->validationMessages([
                                                            'regex' => 'Số điện thoại sai quy cách.',
                                                        ])
                                                        ->required()
                                                        ->label('Số điện thoại')
                                                        ->unique(ignoreRecord: true)
                                                        ->validationMessages([
                                                            'unique' => 'Số điện thoại này đã tồn tại.',
                                                        ]),
                                                    TextInput::make('DiaChi')
                                                        ->required()
                                                        ->label('Địa chỉ'),
                                                    TextInput::make('MaSoThue')
                                                        ->required()
                                                        ->label('Mã Số thuế'),
                                                ])->columnSpan(2),

                                            Section::make('Thông tin không bắt buộc')
                                                ->description('Nhập thông tin khác của nhà cung cấp')
                                                ->aside()
                                                ->schema([
                                                    TextInput::make('Email')
                                                        ->email()
                                                        ->label('Email'),
                                                    Textarea::make('GhiChu')
                                                        ->label('Ghi chú')
                                                        ->rows(3)
                                                        ->columnSpan(1),
                                                ])->columnSpan(2),
                                        ]),

                                    Select::make('kho_id')
                                        ->label('Kho')
                                        ->relationship('kho', 'TenKho')
                                        // ->required()
                                        ->preload()
                                        ->searchable(),
                                ]),

                            Section::make('Thông tin phụ')
                                ->aside()
                                ->description('Thông tin phụ của phiếu nhập')
                                ->schema([
                                    DatePicker::make('NgayNhap')
                                        // ->required()
                                        ->label('Ngày nhập'),

                                    Textarea::make('GhiChu')
                                        ->label('Ghi chú'),
                                ]),

                            Section::make('Trạng thái')
                                ->description('Trạng thái của phiếu nhập')
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
                    Step::make('Thông tin chi tiết phiếu nhập')
                        ->schema([
                            Repeater::make('dsvattu')
                                ->required()
                                ->validationMessages([
                                    'required' => 'Danh sách vật tư nhập không được trống.',
                                ])
                                ->reorderable(false)
                                ->addActionLabel('Thêm vật tư')
                                ->addAction(function (FormAction $action, $get): FormAction {
                                    return $action->modalContent(
                                        view('filament.vattulist', ['LyDo' => $get('LyDo')])
                                    )
                                        ->action(null)
                                        ->modalCancelAction(false)
                                        ->modalSubmitActionLabel('Xong');
                                })
                                ->label('Danh sách vật tư')
                                ->schema([
                                    TextInput::make('id')->hidden()->live(),
                                    TextInput::make('TenVT')
                                        ->readOnly(true)
                                        ->label('Vật tư')
                                        ->required(),
                                    TextInput::make('soluong')->label('Số lượng')
                                        ->suffix(fn(Get $get): string => (string) vattu::find($get('id'))?->donvitinh->TenDVT ?? '')
                                        ->numeric()
                                        ->minValue(1),
                                    Textarea::make('ghichu')->rows(2)->label('Ghi chú'),
                                ])->defaultItems(0)->grid(4),
                        ])->visibleOn([
                            'create',
                        ]),
                ])->columnSpanFull()->skippable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->modifyQueryUsing(function ($query) {
                if (! Auth::user()->hasRole('super_admin')) {
                    $query->where('user_id', Auth::user()->id);
                }
            })
            //        VD: Hiển thị record cụ thể dựa trên người tạo. Tức là quản lí kho chỉ có thể thấy phiếu do mình tạo
            ->defaultSort('TrangThai', 'asc')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu'),

                TextColumn::make('nhacungcap.TenNCC')
                    ->formatStateUsing(fn($record) => $record->LyDo == 0 ? 'N/A' : $record->nhacungcap->TenNCC)
                    ->placeholder('N/A')
                    ->label('Nhà cung cấp'),

                TextColumn::make('NgayNhap')
                    ->sortable()
                    ->placeholder('N/A')
                    ->label('Ngày nhập')
                    ->date('d/m/Y')
                    ->searchable(),

                TextColumn::make('user.name')
                    ->label('Người nhập')
                    ->searchable(),

                TextColumn::make('kho.TenKho')
                    ->label('Kho'),

                TextColumn::make('LyDo')
                    ->label('Lý do')
                    ->formatStateUsing(fn($record) => match ($record->LyDo) {
                        0 => 'Nhập thành phẩm',
                        1 => 'Nhập nguyên vật liệu',
                        2 => 'Nhập hàng huỷ',
                        default => ''
                    })
                    ->badge()
                    ->color(fn($record): string => match ($record->LyDo) {
                        0 => 'success',
                        1 => 'info',
                        2 => 'danger',
                        default => ''
                    })
                    ->searchable(),

                TextColumn::make('TrangThai')
                    ->alignCenter()
                    ->formatStateUsing(fn($record) => match ($record->TrangThai) {
                        0 => 'Đang xử lý',
                        1 => 'Đã xử lý',
                        2 => 'Đã huỷ',
                        default => ''
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
                    ->label('Ghi chú'),
            ])
            ->filters([
                SelectFilter::make('TrangThai')
                    ->label('Trạng thái')
                    ->options(self::$status),
            ])
            ->actions([

                ActionGroup::make([
                    ViewAction::make()->color('info'),
                    EditAction::make()
                        ->hidden(fn($record): bool => ! $record->TrangThai == 0)
                        ->color('primary'),

                    Action::make('duyetphieunhap')
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieunhap_phieu::nhap'))
                        ->action(function ($record) {
                            $chiTietPhieuNhapRecords = chitietphieunhap::where('phieunhap_id', $record->id)->get();

                            if (count($chiTietPhieuNhapRecords) > 0) {
                                $allHaveVitriId = collect($chiTietPhieuNhapRecords)->every(fn($value) => ! is_null($value->vitri_id));

                                if ($allHaveVitriId) {
                                    foreach ($chiTietPhieuNhapRecords as $value) {
                                        $existingRecord = tonkho::where('vattu_id', $value->vattu_id)
                                            ->where('vitri_id', $value->vitri_id)
                                            ->first();

                                        if ($existingRecord) {
                                            $existingRecord->update([
                                                'SoLuong' => $existingRecord->SoLuong + $value->SoLuong,
                                                'NgayCapNhat' => now(),
                                                'updated_at' => now(),
                                            ]);
                                        } else {
                                            tonkho::create([
                                                'vattu_id' => $value->vattu_id,
                                                'SoLuong' => $value->SoLuong,
                                                'kho_id' => $record->kho_id,
                                                'vitri_id' => $value->vitri_id,
                                                'NgayCapNhat' => now(),
                                                'created_at' => now(),
                                                'updated_at' => now(),
                                            ]);
                                        }
                                    }

                                    Notification::make()
                                        ->title('Đã duyệt phiếu nhập & update tồn kho!')
                                        ->success()
                                        ->send();

                                    $record->update(['TrangThai' => 1]);
                                } else {
                                    Notification::make()
                                        ->title('Chưa cập nhật vị trí cho dữ liệu!')
                                        ->danger()
                                        ->send();
                                }
                            } else {
                                Notification::make()
                                    ->title('Chưa có dữ liệu nhập kho!')
                                    ->danger()
                                    ->send();
                            }
                            //
                        })
                        ->hidden(fn($record): bool => ! $record->TrangThai == 0)
                        ->label('Duyệt')
                        ->icon('heroicon-s-check')
                        ->color('success'),

                    Action::make('huyphieunhap')
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieunhap_phieu::nhap'))
                        ->action(function ($record) {
                            $record->update(['TrangThai' => 2]);
                            Notification::make()
                                ->title('Đã huỷ phiếu nhập')
                                ->danger()
                                ->send();
                        })
                        ->hidden(fn($record): bool => ! $record->TrangThai == 0)
                        ->label('Huỷ')
                        ->icon('heroicon-s-trash')
                        ->color('danger'),

                    RelationManagerAction::make('chitietphieunhap')
                        ->label('Xem danh sách vật tư')
                        ->icon('heroicon-o-list-bullet')
                        ->color('amber')
                        ->relationManager(ChitietphieunhapRelationManager::make()),
                ]),
                // xoá thì phải để oncasade cho chi tiet phieu nhap nua
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    // Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            ChitietphieunhapRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListPhieuNhaps::route('/'),
            'create' => CreatePhieuNhap::route('/create'),
            'view' => Pages\ViewPhieuNhap::route('/{record}'),
            'edit' => EditPhieuNhap::route('/{record}/edit'),
        ];
    }
}
