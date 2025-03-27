<?php

namespace App\Filament\Resources;

use App\Filament\Resources\KhoResource\Pages;
use App\Filament\Resources\KhoResource\RelationManagers;
use App\Models\Kho;
use Filament\Forms;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\HtmlString;

class KhoResource extends Resource
{
    protected static ?string $model = Kho::class;

    public static function getBreadcrumb(): string
    {
        return 'Kho';
    }
    protected static ?string $navigationIcon = 'heroicon-o-building-office';
    protected static ?int $navigationSort = 1;
    protected static ?string $navigationLabel = 'Kho';
    protected static ?string $navigationGroup = 'Quản lý danh mục';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Điền thông tin kho')
                    ->description('Thông tin cụ thể về tên, địa chỉ, ghi chú của kho mới.')
                    ->aside()
                    ->schema([
                        TextInput::make('TenKho')
                            ->required()
                            ->label('Tên kho'),

                        TextInput::make('DiaChi')
                            ->required()
                            ->label('Địa chỉ'),

                        Textarea::make('GhiChu')
                            ->label('Ghi chú'),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('Mã kho')
                    ->searchable(),

                Tables\Columns\TextColumn::make('TenKho')
                    ->label('Tên kho')
                    ->searchable(),

                Tables\Columns\TextColumn::make('DiaChi')
                    ->label('Địa chỉ')
                    ->searchable(),

                Tables\Columns\TextColumn::make('GhiChu')
                    ->label('Ghi chú')
                    ->wrap(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
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
            'index' => Pages\ListKhos::route('/'),
            'create' => Pages\CreateKho::route('/create'),
            'edit' => Pages\EditKho::route('/{record}/edit'),
        ];
    }
}
