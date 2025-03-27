<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuXuatResource\Pages;
use App\Filament\Resources\PhieuXuatResource\RelationManagers;
use App\Models\KhachHang;
use App\Models\PhieuXuat;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Actions\CreateAction;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PhieuXuatResource extends Resource
{
    protected static ?string $model = PhieuXuat::class;

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';
    protected static ?string $navigationLabel = 'Phiếu xuất';
    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin phieu nhap')->schema([
                    TextInput::make('id')
                        ->required()
                        ->label('Ma phieu nhap'),
                    TextInput::make('Sdt')
                        ->required()
                        ->label('Số điện thoại'),
                    TextInput::make('DiaChi')
                        ->required()
                        ->label('Địa chỉ'),
                    TextInput::make('MaSoThue')
                        ->required()
                        ->label('Mã Số thuế'),
                    Select::make('khachhang_id')
                        ->label('Khách hàng')
                        ->relationship('khachhang', 'TenKH') // 'customer' là tên phương thức trong model
//                        ->options(KhachHang::pluck('TenKH', 'id'))
                        ->searchable()
                        ->preload()
                        ->required(),
                    Select::make('LyDo')
                        ->label('Ly Do')
                        ->options([
                            '0' => 'Xử lý',
                            '1' => 'Đã xong',
                        ])
                        ->required()

                ])->columnSpan(1)
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
