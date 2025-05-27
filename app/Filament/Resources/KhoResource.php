<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\KhoResource\Pages;
use App\Models\kho;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ExportBulkAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class KhoResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = kho::class;

    protected static ?string $modelLabel = 'Kho';

    protected static ?string $navigationIcon = 'heroicon-o-building-office';

    protected static ?string $activeNavigationIcon = 'heroicon-s-building-office';

    protected static ?int $navigationSort = 1;

    protected static ?string $navigationLabel = 'Kho';

    protected static ?string $navigationGroup = 'Quản lý danh mục';

    protected static ?string $slug = 'kho';

    public static function getBreadcrumb(): string
    {
        return 'Kho';
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
                Section::make('Điền thông tin kho')
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
            ->emptyStateHeading('Không có kho')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã kho')
                    ->alignLeft()
                    ->width(50)
                    ->searchable()
                    ->sortable(),

                TextColumn::make('TenKho')
                    ->label('Tên kho')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('DiaChi')
                    ->label('Địa chỉ')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('GhiChu')
                    ->label('Ghi chú')
                    ->alignLeft()
                    ->limit(50)
                    ->wrap()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->tooltip(fn ($record) => $record->GhiChu),
            ])
            ->filters([
                //
            ])
            ->actions([
                EditAction::make(),
                // DeleteAction::make(),
            ])
            ->bulkActions([
                ExportBulkAction::make()
                    ->label('Xuất excel')
                    ->icon('heroicon-o-arrow-down-tray')
                    ->exporter(\App\Filament\Exports\KhoExporter::class)
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
            'index' => Pages\ListKhos::route('/'),
            'create' => Pages\CreateKho::route('/create'),
            'edit' => Pages\EditKho::route('/{record}/edit'),
        ];
    }
}
