<?php

namespace App\Filament\Resources;

use App\Filament\Exports\TonkhoExporter;
use App\Filament\Resources\TonkhoResource\Pages;
use App\Filament\Resources\TonkhoResource\RelationManagers;
use App\Models\donvitinh;
use App\Models\kho;
use App\Models\Tonkho;
use Filament\Tables\Actions\SelectAction;
use Filament\Forms;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TonkhoResource extends Resource
{
    protected static ?string $model = tonkho::class;
    protected static ?string $modelLabel = 'Tồn kho';
    public static function getBreadcrumb(): string
    {
        return 'Tồn kho';
    }
    protected static ?string $navigationLabel = 'Tồn kho';

    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';
    protected static ?string $navigationIcon = 'heroicon-o-inbox-stack';
    protected static ?string $slug = 'tonkho';
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
                TextColumn::make('vattu.TenVT')
                    ->searchable()
                    ->label('Tên vật tư'),
                TextColumn::make('SoLuong')
                    ->label('Số lượng'),
                TextColumn::make('vattu.donvitinh_id')
                    ->searchable()
                    ->formatStateUsing(fn ($record): string => (donvitinh::find($record->vattu_id)->TenDVT))
                    ->label('Đơn vị tính'),
                TextColumn::make('vitri.Mota')
                    ->searchable()
                    ->label('Vị trí'),
                TextColumn::make('NgayCapNhat')
                    ->date('d-m-Y')
                    ->label('Ngày cập nhật'),
            ])
            ->defaultPaginationPageOption(25)
            ->emptyStateHeading('Không có thông tin tồn kho')
//            ->headerActions([
//                Tables\Actions\ExportAction::make(),
//            ])
            ->filters([
                Tables\Filters\SelectFilter::make('kho_id')
                    ->relationship('kho', 'TenKho')
                    ->preload()
                    ->searchable()
                    ->label('Chọn kho'),
            ], layout: FiltersLayout::AboveContent)
            ->actions([
                Tables\Actions\ViewAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
                Tables\Actions\ExportBulkAction::make()
                    ->label('Xuất Excel')
                    ->icon('heroicon-o-document-arrow-down')
                    ->color('primary')
                    ->exporter(TonkhoExporter::class),
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
            'index' => Pages\ListTonkhos::route('/'),
            'create' => Pages\CreateTonkho::route('/create'),
            'edit' => Pages\EditTonkho::route('/{record}/edit'),
        ];
    }
}
