<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TaixeResource\Pages;
use App\Filament\Resources\TaixeResource\RelationManagers;
use App\Models\taixe;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TaixeResource extends Resource
{
    protected static ?string $model = taixe::class;
    protected static ?string $modelLabel = 'Tài xế';

    protected static ?string $navigationIcon = 'heroicon-o-user';
    protected static ?string $navigationLabel = 'Tài xế';
    protected static ?string $navigationGroup = 'Quản lý danh mục';
    protected static ?string $slug = 'taixe';

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
                //
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
            'index' => Pages\ListTaixes::route('/'),
            'create' => Pages\CreateTaixe::route('/create'),
            'edit' => Pages\EditTaixe::route('/{record}/edit'),
        ];
    }
}
