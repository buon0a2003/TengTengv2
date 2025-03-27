<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ChiTietPhieuNhapResource\Pages;
use App\Filament\Resources\ChiTietPhieuNhapResource\RelationManagers;
use App\Models\chitietphieunhap;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ChiTietPhieuNhapResource extends Resource
{
    protected static ?string $model = chitietphieunhap::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static bool $shouldRegisterNavigation = false;

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
            'index' => Pages\ListChiTietPhieuNhaps::route('/'),
            'create' => Pages\CreateChiTietPhieuNhap::route('/create'),
            'edit' => Pages\EditChiTietPhieuNhap::route('/{record}/edit'),
        ];
    }
}
