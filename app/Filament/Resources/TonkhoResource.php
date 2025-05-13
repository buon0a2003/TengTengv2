<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use Filament\Tables;
use App\Models\tonkho;
use Filament\Forms\Get;
use Filament\Forms\Form;
use App\Models\donvitinh;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Section;
use Filament\Tables\Columns\TextColumn;
use App\Filament\Exports\TonkhoExporter;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\TonkhoResource\Pages;

class TonkhoResource extends Resource
{
    protected static ?string $model = tonkho::class;

    protected static ?string $modelLabel = 'Tồn kho';

    protected static ?string $navigationLabel = 'Tồn kho';

    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';

    protected static ?string $navigationIcon = 'heroicon-o-inbox-stack';

    protected static ?string $activeNavigationIcon = 'heroicon-s-inbox-stack';

    protected static ?int $navigationSort = 2;

    protected static ?string $slug = 'tonkho';

    public static function getBreadcrumb(): string
    {
        return 'Tồn kho';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Điền thông tin tồn kho')
                    ->description('Thông tin cụ thể về tên, địa chỉ, ghi chú của kho mới.')
                    ->aside()
                    ->schema([
                        Select::make('vattu_id')
                            ->label('Vật tư')
                            ->required()
                            ->relationship('vattu', 'TenVT')
                            ->searchable()
                            ->preload(),
                        Select::make('kho_id')
                            ->label('Kho')
                            ->required()
                            ->relationship('kho', 'TenKho')
                            ->searchable()
                            ->live()
                            ->preload(),
                        Select::make('vitri_id')
                            ->label('Vị trí')
                            ->required()
                            ->relationship(
                                'vitri',
                                'Mota',
                                function (Builder $query, Get $get) {
                                    $query->where('kho_id', $get('kho_id'));
                                },
                            )
                            ->searchable()
                            ->preload(),
                        TextInput::make('SoLuong')
                            ->label('Số lượng')
                            ->numeric()
                            ->minValue(0)
                            ->required(),
                    ]),
            ])->columns(2);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->query(tonkho::with('vattu', 'kho', 'vitri'))
            ->emptyStateHeading('Không có hàng tồn kho')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('vattu.TenVT')
                    ->searchable()
                    ->label('Tên vật tư'),
                TextColumn::make('SoLuong')
                    ->label('Số lượng'),
                TextColumn::make('vattu.donvitinh.TenDVT')
                    ->searchable()
                    // ->formatStateUsing(fn ($record): string => (donvitinh::find($record->vattu_id)->TenDVT))
                    ->label('Đơn vị tính'),
                TextColumn::make('kho.TenKho')
                    ->label('Kho'),
                TextColumn::make('vitri.Mota')
                    ->searchable()
                    ->label('Vị trí'),
                TextColumn::make('vattu.LaTP')
                    ->label('Loại vật tư')
                    ->formatStateUsing(fn($state) => $state ? 'Thành phẩm' : 'Nguyên vật liệu')
                    ->badge()
                    ->color(fn($state) => $state ? 'success' : 'warning'),
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
                SelectFilter::make('kho_id')
                    ->relationship('kho', 'TenKho')
                    ->preload()
                    ->searchable()
                    ->label('Chọn kho'),
                SelectFilter::make('LaTP')
                    ->options([
                        0 => 'Nguyên vật liệu',
                        1 => 'Thành phẩm',
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query->when(
                            isset($data['value']),
                            fn(Builder $query, $value): Builder => $query->whereHas('vattu', fn($q) => $q->where('LaTP', '=', $data['value']))
                        );
                    })
                    ->label('Loại vật tư')
            ], layout: FiltersLayout::AboveContent)
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make(),
                    Tables\Actions\EditAction::make()->label('Sửa'),
                ]),
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
            'tondau' => Pages\TonDau::route('/tondau'),
        ];
    }
}
