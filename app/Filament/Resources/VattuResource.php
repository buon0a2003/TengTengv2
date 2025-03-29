<?php

namespace App\Filament\Resources;

use App\Filament\Resources\VattuResource\Pages;
use App\Filament\Resources\VattuResource\RelationManagers;
use App\Models\Vattu;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class VattuResource extends Resource
{
    protected static ?string $model = Vattu::class;
    protected static ?string $modelLabel = 'Vật tư';
    public static function getBreadcrumb(): string
    {
        return 'Vật tư';
    }
    protected static ?string $navigationIcon = 'heroicon-o-circle-stack';
    protected static ?int $navigationSort = 1;
    protected static ?string $navigationLabel = 'Vật tư';
    protected static ?string $navigationGroup = 'Quản lý danh mục';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Thông tin vật tư')
                    ->aside()
                    ->description('Thông tin chi tiết về vật tư mới.')
                    ->schema([
                    Forms\Components\Checkbox::make('LaTP')
                        ->required()
                        ->label('Là thành phẩm?'),

                    Forms\Components\TextInput::make('TenVT')
                        ->required()
                        ->label('Tên vật tư'),

                    Forms\Components\Select::make('donvitinh_id')
                        ->relationship('donvitinh', 'TenDVT')
                        ->preload()
                        ->required()
                        ->label('Đơn vị tính'),

                    Forms\Components\TextInput::make('KichThuoc')
                        ->label('Kích thước'),

                    Forms\Components\TextInput::make('MauSac')
                        ->label('Màu Sắc'),

                    Forms\Components\TextInput::make('DacDiem')
                        ->label('Đặc điểm'),
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')
                    ->label('Mã vật tư'),

                TextColumn::make('TenVT')
                    ->searchable()
                    ->label('Tên vật tư'),

                TextColumn::make('donvitinh.TenDVT')
                    ->alignCenter()
                    ->label('Đơn vị tính'),

                Textcolumn::make('KichThuoc')
                    ->label('Kích thước'),

                Textcolumn::make('MauSac')
                    ->label('Màu sắc'),

                Textcolumn::make('DacDiem')
                    ->label('Dặc điểm'),

                IconColumn::make('LaTP')
                    ->alignCenter()
                    ->label('Là thành phẩm'),
            ])
            ->filters([
                SelectFilter::make('LaTP')
                    ->label('Loại vật tư')
                    ->options([
                        '1' => 'Thành phẩm',
                        '0' => 'Nguyên vật liệu',
                    ])
            ])
            ->actions([
                ActionGroup::make([
                    ViewAction::make()->color('secondary'),
                    EditAction::make()->color('primary'),
                    DeleteAction::make(),
                ]),
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
            'index' => Pages\ListVattus::route('/'),
            'create' => Pages\CreateVattu::route('/create'),
            'edit' => Pages\EditVattu::route('/{record}/edit'),
        ];
    }
}
