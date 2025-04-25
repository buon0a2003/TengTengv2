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

    protected static ?string $modelLabel = 'Xe tải';

    protected static ?string $navigationLabel = 'Xe tải';

    protected static ?string $navigationGroup = 'Quản lý vận chuyển';
    protected static ?int $navigationSort = 3;

    protected static ?string $slug = 'xetai';

    protected static ?string $navigationIcon = 'heroicon-o-truck';

    public static function getBreadcrumb(): string
    {
        return 'Xe tải';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin xe tải')
                    ->description('Thông tin chi tiết về xe tải')
                    ->aside()
                    ->schema([
                        TextInput::make('BienSo')
                            ->label('Biển số xe')
                            ->required(),
                        TextInput::make('TenXe')
                            ->label('Loại xe')
                            ->required(),
                        TextInput::make('HangXe')
                            ->label('Hãng xe')
                            ->required(),
                        TextInput::make('TaiTrong')
                            ->label('Tải trọng (kg)')
                            ->numeric()
                            ->minValue(0)
                            ->required(),
                        TextInput::make('MauSac')
                            ->label('Màu sắc'),
                        Textarea::make('GhiChu')
                            ->label('Ghi chú'),
                    ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->emptyStateHeading('Không có xe tải')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('BienSo')
                    ->label('Biển số xe')
                    ->searchable(),
                TextColumn::make('TenXe')
                    ->label('Loại xe')
                    ->searchable(),
                TextColumn::make('HangXe')
                    ->label('Hãng xe')
                    ->searchable(),
                TextColumn::make('TaiTrong')
                    ->label('Tải trọng (kg)')
                    ->searchable(),
                TextColumn::make('MauSac')
                    ->label('Màu sắc'),
                TextColumn::make('GhiChu')
                    ->label('Ghi chú'),
                TextColumn::make('TrangThai')
                    ->label('Trạng thái')
                    ->alignCenter()
                    ->formatStateUsing(fn ($record) => match ($record->TrangThai) {
                        0 => 'Đang giao',
                        1 => 'Có sẵn',
                        2 => 'Nghỉ',
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
