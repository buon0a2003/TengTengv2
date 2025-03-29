<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuXuatResource\Pages;
use App\Filament\Resources\PhieuXuatResource\RelationManagers;
use App\Forms\Components\CustomTableForPhieuXuat;
use App\Models\KhachHang;
use App\Models\PhieuXuat;
use App\Models\tonkho;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Actions\CreateAction;
use Filament\Forms\Get;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PhieuXuatResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = PhieuXuat::class;

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
//            'duyetphieuxuat'
        ];
    }

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';
    protected static ?string $navigationLabel = 'Phiếu xuất';
    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin phiếu xuất')
                    ->description('Thông tin chi tiết phiếu xuất')
                    ->aside()
                    ->schema([
                        Forms\Components\Radio::make('LyDo')
//                                        ->required()
                            ->inline()
                            ->default('0')
                            ->live()
                            ->label('Lý do xuất hàng?')
                            ->options([
                                '0' => 'Xuất sản xuất',
                                '1' => 'Xuất nguyên vật liệu'
                            ]),

                        Forms\Components\TextInput::make('id')
                            ->placeholder('eg: PN001/xx/xx')
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
                            ->hidden(fn (Get $get): bool => $get('LyDo') == '0')
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
                            ])
                    ]),

                Section::make("Chi tiết phiếu xuất")->schema([

                    CustomTableForPhieuXuat::make('chitietphietxuat')
                        ->columns([
                            'Chọn',
                            'Mã',
                            'Vật tư',
                            'Đơn vị tính',
                            'Số lượng thực',
                            'Số lượng xuất',
                            'Vị trí'
                        ])
                        ->data(TonKho::with(['vattu.donvitinh', 'vitri'])->get()->map(function ($item) {
                            return [
                                '<input type="checkbox" name="selected[]" value="' . $item->id . '"  x-model="selected[' . $item->id . ']" class="checkbox-toggle">', // 🆕 Input số lượng xuất,
                                $item->id,
                                $item->vattu->TenVT ?? 'N/A', // Lấy tên vật tư từ bảng vattu
                                $item->vattu->donvitinh->TenDVT ?? 'N/A',
                                $item->SoLuong,
                                '<input type="number"
                                name="soluong_xuat[' . $item->id . ']"
                                class="border px-2 py-1 rounded w-full"
                                style="visibility: hidden;"
                                x-bind:style="selected[' . $item->id . '] ? \'visibility: visible;\' : \'visibility: hidden;\'"
                                x-bind:disabled="!selected[' . $item->id . ']"
                                >',
                                $item->vitri->Mota ?? 'N/A',
                            ];
                        })->toArray())
                        ->label('Danh sách sản phẩm')
                ]),


            ]);
    }


    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu'),
                TextColumn::make('khachhang.TenKH')
                    ->label('Khach hang'),
                TextColumn::make('NgayXuat')
                    ->date('d/m/Y')
                    ->searchable(),

                TextColumn::make('user.name')
                    ->label('Người nhập')
                    ->searchable(),
//                TextColumn::make('kho.TenKho')
//                    ->label('Kho'),
                TextColumn::make('LyDo')
                    ->label('Lý do')
                    ->formatStateUsing(fn ($record) => $record->LyDo == 1 ? 'Xuat nguyên vật liệu' : 'Xuat cho sản xuất')
                    ->badge()
                    ->color(fn ($record): string =>  $record->LyDo == 1 ? 'success' : 'secondary')
                    ->searchable(),

                TextColumn::make('GhiChu')
                    ->label('Ghi chú'),

            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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
            //
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
