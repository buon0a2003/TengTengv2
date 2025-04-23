<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\TaixeResource\Pages;
use App\Models\taixe;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Support\Colors\Color;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

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
                Section::make('Them thong tin tai xe')
                ->description('Them thong tin tai xe')
                ->aside()
                ->schema([
                    TextInput::make('TenTaiXe')
                        ->label('Ten tai xe')
                        ->required(),
                    TextInput::make('Sdt')
                        ->label('So dien thoai')
                        ->required(),
                    TextInput::make('CCCD')
                        ->label('Ma can cuoc')
                        ->required(),
                    TextInput::make('BangLai')
                        ->label('Ma bang lai')
                        ->required(),
                    Textarea::make('DiaChi')
                        ->label('Dia chi'),
                    DatePicker::make('NamSinh')
                        ->label('Nam sinh')
                        ->required(),
                    Textarea::make('GhiChu')
                        ->label('Ghi chu'),
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('TenTaiXe')
                    ->label('Ten tai xe')
                    ->searchable(),
                TextColumn::make('Sdt')
                    ->label('So dien thoai')
                    ->searchable(),
                TextColumn::make('CCCD')
                    ->label('Ma can cuoc')
                    ->searchable(),
                TextColumn::make('BangLai')
                    ->label('Ma bang lai')
                    ->searchable(),
                TextColumn::make('DiaChi')
                    ->label('Dia chi')
                    ->searchable(),
                TextColumn::make('NamSinh')
                    ->label('Nam sinh')
                    ->date('d/m/Y')
                    ->searchable(),
                TextColumn::make('GhiChu')
                    ->searchable('Ghi chu'),
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
            'index' => Pages\ListTaixes::route('/'),
            'create' => Pages\CreateTaixe::route('/create'),
            'edit' => Pages\EditTaixe::route('/{record}/edit'),
        ];
    }
}
