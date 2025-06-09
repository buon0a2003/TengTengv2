<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\VattuResource\Pages;
use App\Models\vattu;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ExportBulkAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Notifications\Notification;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;

class VattuResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = vattu::class;

    protected static ?string $modelLabel = 'Vật tư';

    protected static ?string $navigationIcon = 'heroicon-o-circle-stack';

    protected static ?string $activeNavigationIcon = 'heroicon-s-circle-stack';

    protected static ?int $navigationSort = 1;

    protected static ?string $navigationLabel = 'Vật tư';

    protected static ?string $navigationGroup = 'Quản lý danh mục';

    protected static ?string $slug = 'vattu';

    public static function getBreadcrumb(): string
    {
        return 'Vật tư';
    }

    public static function getPermissionPrefixes(): array
    {
        return [
            'view',
            'view_any',
            'create',
            'update',
            'delete',
        ];
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Thông tin vật tư')
                    ->aside()
                    ->description('Thông tin chi tiết về vật tư mới.')
                    ->schema([
                        Forms\Components\Checkbox::make('LaTP')
                            ->inline()
                            ->label('Là thành phẩm?'),

                        Forms\Components\TextInput::make('MaVT')
                            ->required()
                            ->label('Mã vật tư')
                            ->maxLength(25)
                            ->unique(ignoreRecord: true)
                            ->reactive()
                            ->afterStateUpdated(function ($state, callable $set) {
                                if ($state) {
                                    $set('MaVT', mb_strtoupper($state));
                                }
                            }),

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
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->emptyStateHeading('Không có vật tư')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('MaVT')
                    ->label('Mã vật tư')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('TenVT')
                    ->label('Tên vật tư')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('donvitinh.TenDVT')
                    ->label('Đơn vị tính')
                    ->alignCenter()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('KichThuoc')
                    ->label('Kích thước')
                    ->alignLeft()
                    ->searchable(),

                TextColumn::make('MauSac')
                    ->label('Màu sắc')
                    ->alignLeft()
                    ->searchable(),

                TextColumn::make('DacDiem')
                    ->label('Đặc điểm')
                    ->alignLeft()
                    ->limit(50)
                    ->tooltip(fn($record) => $record->DacDiem),

                IconColumn::make('LaTP')
                    ->label('Là thành phẩm')
                    ->alignCenter()
                    ->boolean()
                    ->sortable(),
            ])
            ->filters([
                SelectFilter::make('LaTP')
                    ->label('Loại vật tư')
                    ->options([
                        '1' => 'Thành phẩm',
                        '0' => 'Nguyên vật liệu',
                    ]),
            ])
            ->actions([
                ActionGroup::make([
                    ViewAction::make()->color('secondary'),
                    EditAction::make()->color('primary'),
                    DeleteAction::make()
                        ->action(
                            function ($record): void {
                                $hasRelatedRecords = false;
                                $relationshipMessages = [];

                                // Check tonkho relationship
                                if ($record->tonkho()->count() > 0) {
                                    $hasRelatedRecords = true;
                                    $relationshipMessages[] = 'tồn kho';
                                }

                                // Check chitietphieunhap relationship
                                if ($record->chitietphieunhap()->count() > 0) {
                                    $hasRelatedRecords = true;
                                    $relationshipMessages[] = 'phiếu nhập';
                                }

                                // Check chitietphieuxuat relationship
                                if ($record->chitietphieuxuat()->count() > 0) {
                                    $hasRelatedRecords = true;
                                    $relationshipMessages[] = 'phiếu xuất';
                                }

                                // Check chitietphieudieuchuyen relationship
                                if ($record->chitietphieudieuchuyen()->count() > 0) {
                                    $hasRelatedRecords = true;
                                    $relationshipMessages[] = 'phiếu điều chuyển';
                                }

                                if ($hasRelatedRecords) {
                                    Notification::make()
                                        ->danger()
                                        ->title('Xoá không thành công')
                                        ->body('Vật tư đang được sử dụng trong: ' . implode(', ', $relationshipMessages) . '!')
                                        ->send();

                                    return;
                                }

                                $record->delete();
                                Notification::make()
                                    ->success()
                                    ->title('Xoá thành công')
                                    ->body('Vật tư đã xoá thành công!')
                                    ->send();
                            }
                        ),
                ]),
            ])
            ->bulkActions([
                ExportBulkAction::make()
                    ->exporter(\App\Filament\Exports\VattuExporter::class)
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
            'index' => Pages\ListVattus::route('/'),
            'create' => Pages\CreateVattu::route('/create'),
            'edit' => Pages\EditVattu::route('/{record}/edit'),
        ];
    }
}
