<?php

namespace App\Filament\Resources\PhieuNhapResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ChitietphieunhapRelationManager extends RelationManager
{
    protected static string $relationship = 'chitietphieunhap';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('vitri_id')
                    ->label('vị trí')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('phieunhap_id')
            ->columns([
//                Tables\Columns\TextColumn::make('phieunhap_id'),
                Tables\Columns\TextColumn::make('vattu.TenVT')->label('Tên vật tư'),
                Tables\Columns\TextColumn::make('SoLuong')->label('Số lượng'),
                Tables\Columns\TextColumn::make('vitri_id')->label('Vị trí'),
                Tables\Columns\TextColumn::make('GhiChu')->label('Ghi chú'),
            ])
            ->filters([
                //
            ])
            ->headerActions([
//                Tables\Actions\CreateAction::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
//                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }
}
