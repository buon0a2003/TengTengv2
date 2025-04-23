<?php

namespace App\Filament\Resources;

use App\Filament\Resources\XeTaiResource\Pages;
use App\Filament\Resources\XeTaiResource\RelationManagers;
use App\Models\XeTai;
use Filament\Forms;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class XeTaiResource extends Resource
{
    protected static ?string $model = XeTai::class;

    protected static ?string $modelLabel = 'Xe tai';

    protected static ?string $navigationLabel = 'Xe tai';

    protected static ?string $navigationGroup = 'Quản lý danh mục';

    protected static ?string $slug = 'xetai';

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Them thong tin xe tai')
                    ->description('Them thong tin xe tai')
                    ->aside()
                    ->schema([
                        TextInput::make('BienSo')
                            ->label('Bien so xe')
                            ->required(),
                        TextInput::make('TenXe')
                            ->label('Loai xe')
                            ->required(),
                        TextInput::make('HangXe')
                            ->label('Hang xe')
                            ->required(),
                        TextInput::make('TaiTrong')
                            ->label('Tai trong (kg)')
                            ->required(),
                        TextInput::make('MauSac')
                            ->label('Mau sac'),
                        Textarea::make('GhiChu')
                            ->label('Ghi chu'),
                    ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('BienSo')
                    ->label('Bien so xe')
                    ->searchable(),
                TextColumn::make('TenXe')
                    ->label('Loai xe')
                    ->searchable(),
                TextColumn::make('HangXe')
                    ->label('Hang xe')
                    ->searchable(),
                TextColumn::make('TaiTrong')
                    ->label('Tai trong (kg)')
                    ->searchable(),
                TextColumn::make('MauSac')
                    ->label('Mau sac'),
                TextColumn::make('GhiChu')
                    ->label('Ghi chu'),
                TextColumn::make('TrangThai')
                    ->alignCenter()
                    ->formatStateUsing(fn ($record) => match ($record->TrangThai) {
                        0 => 'Dang giao',
                        1 => 'Co san',
                        2 => 'Nghi',
                        default => 'N/A'
                    })
                    ->badge()
                    ->color(fn ($record): string => match ($record->TrangThai) {
                        0 => 'success',
                        1 => 'info',
                        2 => 'danger',
                        default => ''
                    })
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
            'index' => Pages\ListXeTais::route('/'),
            'create' => Pages\CreateXeTai::route('/create'),
            'edit' => Pages\EditXeTai::route('/{record}/edit'),
        ];
    }
}
