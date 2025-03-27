<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DonvitinhResource\Pages;
use App\Filament\Resources\DonvitinhResource\RelationManagers;
use App\Models\Donvitinh;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class DonvitinhResource extends Resource
{
    protected static ?string $model = Donvitinh::class;
    public static function getBreadcrumb(): string
    {
        return 'Đơn vị tính';
    }
    protected static ?string $navigationIcon = 'heroicon-o-swatch';
    protected static ?int $navigationSort = 1;
    protected static ?string $navigationLabel = 'Đơn vị tính';
    protected static ?string $navigationGroup = 'Quản lý danh mục';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Điền thông tin đơn vị tính')
                    ->description('Thông tin cụ thể về tên, mô tả của đơn vị tính mới.')
                    ->aside()
                    ->schema([
                        TextInput::make('TenDVT')
                            ->label('Tên đơn vị tính')
                            ->required(),
                        Textarea::make('Mota')
                            ->label('Mô tả'),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('Mã')
                    ->searchable(),

                Tables\Columns\TextColumn::make('TenDVT')
                    ->label('Tên đơn vị tính')
                    ->searchable(),

                Tables\Columns\TextColumn::make('Mota')
                    ->label('Mô tả')
                    ->searchable(),
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
            'index' => Pages\ListDonvitinhs::route('/'),
            'create' => Pages\CreateDonvitinh::route('/create'),
            'edit' => Pages\EditDonvitinh::route('/{record}/edit'),
        ];
    }
}
