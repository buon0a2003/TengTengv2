<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuNhapResource\Pages;
use App\Filament\Resources\PhieuNhapResource\RelationManagers;
use App\Models\PhieuNhap;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PhieuNhapResource extends Resource
{
    protected static ?string $model = PhieuNhap::class;

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';
    protected static ?string $navigationLabel = 'Phiếu nhập';
    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu'),

                TextColumn::make('nhacungcap.TenNCC')
                    ->label('Nhà cung cấp'),

                TextColumn::make('NgayNhap')
                    ->date('d/m/Y')
                    ->searchable(),

                TextColumn::make('user.name')
                    ->label('Người nhập')
                    ->searchable(),

                TextColumn::make('MaKho'),

                TextColumn::make('LyDo'),

                TextColumn::make('GhiChu'),
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
            'index' => Pages\ListPhieuNhaps::route('/'),
            'create' => Pages\CreatePhieuNhap::route('/create'),
            'edit' => Pages\EditPhieuNhap::route('/{record}/edit'),
        ];
    }
}
