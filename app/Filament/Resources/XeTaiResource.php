<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Exports\XetaiExporter;
use App\Filament\Resources\XeTaiResource\Pages;
use App\Models\XeTai;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Forms\Components\Radio;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Support\Enums\FontWeight;
use Filament\Tables;
use Filament\Tables\Actions\ExportBulkAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class XeTaiResource extends Resource implements HasShieldPermissions
{
    public static $trangthai = [
        0 => 'Đang giao',
        1 => 'Có sẵn',
        2 => 'Nghỉ',
    ];

    protected static ?string $model = XeTai::class;

    protected static ?string $modelLabel = 'Xe tải';

    protected static ?string $navigationLabel = 'Xe tải';

    protected static ?string $navigationGroup = 'Quản lý vận chuyển';

    protected static ?int $navigationSort = 2;

    protected static ?string $slug = 'xetai';

    protected static ?string $navigationIcon = 'heroicon-o-truck';

    protected static ?string $activeNavigationIcon = 'heroicon-s-truck';

    public static function getBreadcrumb(): string
    {
        return 'Xe tải';
    }

    public static function getPermissionPrefixes(): array
    {
        return [
            'view',
            'view_any',
            'create',
            'update',
        ];
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin xe tải')
                    ->description('Thông tin chi tiết về xe tải')
                    ->aside()
                    ->schema([
                        Radio::make('TrangThai')
                            ->visibleOn('edit')
                            ->inline()
                            ->live()
                            ->label('Trạng thái')
                            ->options(self::$trangthai),
                        TextInput::make('BienSo')
                            ->label('Biển số xe')
                            ->reactive()
                            ->afterStateUpdated(function ($state, callable $set) {
                                if ($state) {
                                    $set('BienSo', mb_strtoupper($state));
                                }
                            })
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
                    ]),
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
                    ->alignCenter()
                    ->badge()
                    ->color('primary')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('TenXe')
                    ->label('Loại xe')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('HangXe')
                    ->label('Hãng xe')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('TaiTrong')
                    ->label('Tải trọng (kg)')
                    ->numeric()
                    ->weight(FontWeight::Bold)
                    ->searchable()
                    ->sortable(),
                TextColumn::make('MauSac')
                    ->label('Màu sắc')
                    ->alignLeft()
                    ->searchable(),
                TextColumn::make('GhiChu')
                    ->label('Ghi chú')
                    ->alignLeft()
                    ->limit(50)
                    ->wrap()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->tooltip(fn ($record) => $record->GhiChu),
                TextColumn::make('TrangThai')
                    ->label('Trạng thái')
                    ->alignCenter()
                    ->icon(fn ($record): string => match ($record->TrangThai) {
                        0 => 'heroicon-o-clock',
                        1 => 'heroicon-o-check-circle',
                        2 => 'heroicon-o-x-circle',
                        default => ''
                    })
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
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                //
                ExportBulkAction::make()
                    ->exporter(XetaiExporter::class)
                    ->label('Xuất excel')
                    ->icon('heroicon-o-arrow-down-tray')
                    ->color('primary'),
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
