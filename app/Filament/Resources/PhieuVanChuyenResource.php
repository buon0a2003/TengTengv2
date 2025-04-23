<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuVanChuyenResource\Pages;
use App\Filament\Resources\PhieuVanChuyenResource\RelationManagers;
use App\Models\PhieuVanChuyen;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PhieuVanChuyenResource extends Resource
{
    protected static ?string $model = PhieuVanChuyen::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

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
            ->defaultSort('TrangThai', 'asc')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu'),
                TextColumn::make('NgayVanChuyen')
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
            'index' => Pages\ListPhieuVanChuyens::route('/'),
            'create' => Pages\CreatePhieuVanChuyen::route('/create'),
            'edit' => Pages\EditPhieuVanChuyen::route('/{record}/edit'),
        ];
    }
}
