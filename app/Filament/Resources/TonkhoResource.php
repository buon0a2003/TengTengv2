<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use Filament\Tables;
use App\Models\tonkho;
use Filament\Forms\Get;
use Filament\Forms\Form;
use App\Models\donvitinh;
use Filament\Tables\Table;
use Illuminate\Support\Carbon;
use Filament\Resources\Resource;
use Filament\Tables\Filters\Filter;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Section;
use Filament\Support\Enums\FontWeight;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use App\Filament\Exports\TonkhoExporter;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Forms\Components\DatePicker;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Actions\ExportBulkAction;
use App\Filament\Resources\TonkhoResource\Pages;
use App\Filament\Resources\TonkhoResource\Pages\TonDau;
use App\Filament\Resources\TonkhoResource\Pages\EditTonkho;
use App\Filament\Resources\TonkhoResource\Pages\ListTonkhos;
use App\Filament\Resources\TonkhoResource\Pages\CreateTonkho;

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
            ->query(

                tonkho::query()
                    ->with(['kho', 'vattu.donvitinh', 'vitri'])
                    ->where('SoLuong', '>', 0)

            )
            ->emptyStateHeading('Không có hàng tồn kho')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('vattu.MaVT')
                    ->label('Mã vật tư')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('vattu.TenVT')
                    ->label('Tên vật tư')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('SoLuong')
                    ->label('Số lượng')
                    ->alignRight()
                    ->numeric(decimalPlaces: 0)
                    ->weight(FontWeight::Bold)
                    ->sortable(),
                TextColumn::make('vattu.donvitinh.TenDVT')
                    ->label('Đơn vị tính')
                    ->alignCenter()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('kho.TenKho')
                    ->label('Kho')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('vitri.Mota')
                    ->label('Vị trí')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('vattu.LaTP')
                    ->label('Loại vật tư')
                    ->alignCenter()
                    ->formatStateUsing(fn($state) => $state ? 'Thành phẩm' : 'Nguyên vật liệu')
                    ->badge()
                    ->color(fn($state) => $state ? 'success' : 'warning')
                    ->sortable(),
                TextColumn::make('NgayCapNhat')
                    ->label('Ngày cập nhật')
                    ->alignCenter()
                    ->date('d-m-Y')
                    ->sortable(),
            ])
            ->defaultPaginationPageOption(25)
            ->emptyStateHeading('Không có thông tin tồn kho')
            ->filters([
                SelectFilter::make('kho_id')
                    ->relationship('kho', 'TenKho')
                    ->preload()
                    ->searchable()
                    ->label('Chọn kho'),
                SelectFilter::make('LaTP')
                    ->label('Loại vật tư')
                    ->options([
                        0 => 'Nguyên vật liệu',
                        1 => 'Thành phẩm',
                    ])
                    ->label('Loại vật tư')
                    ->query(function ($query, array $data) {
                        if (isset($data['value']) && $data['value'] !== '') {
                            $query->whereHas('vattu', function ($q) use ($data) {
                                $q->where('LaTP', $data['value']);
                            });
                        }
                    }),
                Filter::make('NgayCapNhat')
                    ->form([
                        DatePicker::make('NgayCapNhat')
                            ->label('Tháng')
                            ->displayFormat('m/Y')
                            ->format('Y-m')
                            ->default(now()->format('Y-m'))
                            // ->native(false)
                            ->closeOnDateSelection()
                            ->placeholder('Chọn tháng')
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['NgayCapNhat'],
                                fn(Builder $query, $date): Builder => $query->whereYear('NgayCapNhat', Carbon::parse($date)->year)
                                    ->whereMonth('NgayCapNhat', Carbon::parse($date)->month),
                            );
                    })
                    ->indicateUsing(function (array $data): ?string {
                        if (! $data['NgayCapNhat']) {
                            return null;
                        }

                        return 'Tháng: ' . Carbon::parse($data['NgayCapNhat'])->format('m/Y');
                    })

            ], layout: FiltersLayout::AboveContent)
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make(),
                    Tables\Actions\EditAction::make()->label('Sửa'),
                ]),
            ])
            ->bulkActions([
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
