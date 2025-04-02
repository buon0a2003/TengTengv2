<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuXuatResource\Pages;
use App\Filament\Resources\PhieuXuatResource\RelationManagers;
use App\Filament\Resources\PhieuXuatResource\RelationManagers\ChitietphieuxuatRelationManager;
use App\Forms\Components\CustomTableForPhieuXuat;
use App\Livewire\tonkhoList;
use App\Models\chitietphieuxuat;
use App\Models\KhachHang;
use App\Models\phieuxuat;
use App\Models\tonkho;
use App\Models\kho;
use App\Models\vitri;
use App\Models\vattu;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\ActionGroup;
use Filament\Forms;
use Filament\Forms\Components\Checkbox;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Radio;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\ViewField;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Form;
use Filament\Actions\CreateAction;
use Filament\Forms\Components\Livewire;
use Filament\Forms\Components\Tabs\Tab;
use Filament\Forms\Get;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Notifications\Notification;
use Filament\Support\Exceptions\Cancel;
use Guava\FilamentModalRelationManagers\Actions\Table\RelationManagerAction;
use Illuminate\Support\Facades\Auth;

class PhieuXuatResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = phieuxuat::class;

    protected static ?string $modelLabel = 'Phiếu xuất';

    public static function getPermissionPrefixes(): array
    {
        return [
            'view',
            'view_any',
            'create',
            'update',
            'delete',
            'delete_any',
            'duyetphieuxuat'
        ];
    }

    protected static ?string $navigationIcon = 'heroicon-o-chevron-double-right';
    protected static ?string $navigationLabel = 'Phiếu xuất';
    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';
    protected static ?string $slug = 'phieuxuat';

    public static function getNavigationBadge(): ?string
    {
        return (string) static::getModel()::where('TrangThai', 0)->count();
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
                    Wizard\Step::make('Thông tin phiếu xuất')
                        ->schema([
                            Forms\Components\Section::make('Thông tin chính')
                                ->description('Thông tin chi tiết phiếu xuất')
                                ->aside()
                                ->schema([
                                    Radio::make('LyDo')
                                        //                                        ->required()
                                        ->inline()
                                        ->default('0')
                                        ->live()
                                        ->label('Lý do xuất hàng?')
                                        ->options([
                                            '0' => 'Xuất sản xuất',
                                            '1' => 'Xuất bán',
                                        ]),

                                    TextInput::make('id')
                                        ->placeholder('eg: PX001/xx/xx')
                                        ->unique(ignoreRecord: true)
                                        //                                        ->required()
                                        ->label('Mã phiếu xuất'),

                                    Select::make('user_id')
                                        ->label('Người tạo phiếu')
                                        ->relationship('user', 'name')
                                        //                                        ->required()
                                        ->preload()
                                        ->searchable(),

                                    Select::make('khachhang_id')
                                        ->label('Khách hàng')
                                        ->relationship('khachhang', 'TenKH')
                                        ->preload()
                                        ->hidden(fn (Get $get): bool => $get('LyDo') === '0')
                                        ->searchable(),

                                    Select::make('kho_id')
                                        ->label('Kho')
                                        ->relationship('kho', 'TenKho')
                                        //                                        ->required()
                                        ->preload()
                                        ->searchable(),
                                ]),

                            Forms\Components\Section::make('Thông tin phụ')
                                ->aside()
                                ->description('Thông tin phụ của phiếu xuất')
                                ->schema([
                                    Forms\Components\DatePicker::make('NgayXuat')
                                        //                                        ->required()
                                        ->label('Ngày xuất'),

                                    Forms\Components\Textarea::make('GhiChu')
                                        ->label('Ghi chú'),
                                ]),
                            Forms\Components\Section::make('Trạng thái')
                                ->description('Trạng thái của phiếu xuất')
                                ->aside()
                                ->visibleOn('edit')
                                ->schema([
                                    Forms\Components\Radio::make('TrangThai')
                                        ->label('Trạng thái')
                                        ->inline()
                                        ->visibleOn('edit')
                                        ->options([
                                            '0' => 'Đang xử lí',
                                            '1' => 'Đã xử lí',
                                            '2' => 'Đã huỷ',
                                        ]),
                                ]),
                    ]),
                Wizard\Step::make('Thông tin chi tiết phiếu xuất')
                    ->schema([
                        Repeater::make('dsvattuxuat')
                            // ->hidden(fn (Get $get): bool => $get('dsvattuxuat') == null)
                            ->reorderable(false)
                            ->addActionLabel('Thêm vật tư')
                            ->addAction(function (Forms\Components\Actions\Action $action): Forms\Components\Actions\Action {
                                return $action->modalContent(
                                    view('filament.tonkholist')
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
                                    ->suffix(fn (Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                                    ->numeric(),
                                TextInput::make('soluong')->label('Số lượng')
                                    ->required()
                                    ->suffix(fn (Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                                    ->numeric()
                                    ->minValue(0)
                                    ->maxValue(fn (Get $get): int => (int) $get('soluongkhadung')),
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
                    ->formatStateUsing(fn ($record) => $record->LyDo == 0 ? 'Xuất sản xuất' : 'Xuất bán')
                    ->badge()
                    ->color(fn ($record): string =>  $record->LyDo == 0 ? 'info' : 'success')
                    ->searchable(),
                TextColumn::make('TrangThai')
                    ->alignCenter()
                    ->formatStateUsing(fn ($record) => match ($record->TrangThai) {
                        0 => 'Đang xử lý',
                        1 => 'Đã xử lý',
                        2 => 'Đã huỷ',
                        default => 'N/A'
                    })
                    ->badge()
                    ->color(fn ($record): string => match ($record->TrangThai) {
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
                    ->options([
                        '0' => 'Đang xử lý',
                        '1' => 'Đã xử lý',
                        '2' => 'Đã huỷ',
                    ]),
            ])
            ->actions([
                ActionGroup::make([
                    Tables\Actions\ViewAction::make()->color('info'),
                    Tables\Actions\EditAction::make()->color('primary'),
                    Action::make('duyetphieuxuat')
                        ->authorize(fn (): bool => Auth::user()->can('duyetphieuxuat_phieu::xuat'))
                        ->hidden(fn ($record): bool => ! $record->TrangThai == 0)
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
                                }else {
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
                    ->authorize(fn (): bool => Auth::user()->can('duyetphieuxuat_phieu::xuat'))
                    ->label('Huỷ phiếu xuất')
                    ->action(function ($record) {
                            $record->update(['TrangThai' => 2]);
                            Notification::make()
                            ->title('Đã huỷ phiếu xuất!')
                            ->danger()
                            ->send();
                        })
                        ->hidden(fn ($record): bool => ! $record->TrangThai == 0)
                        ->color('danger')
                        ->icon('heroicon-o-x-circle'),

                    RelationManagerAction::make('chitietphieuxuat')
                    ->label('Xem DS vật tư xuất')
                    ->icon('heroicon-o-list-bullet')
                    ->color('amber')
                    ->relationManager(ChitietphieuxuatRelationManager::make()),
                ])
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
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
