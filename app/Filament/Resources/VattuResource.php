<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\VattuResource\Pages;
use App\Models\vattu;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ExportBulkAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;

class VattuResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = vattu::class;

    protected static ?string $modelLabel = 'Vật tư';

    protected static ?string $navigationIcon = 'heroicon-o-circle-stack';

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
                    ->label('Mã vật tư'),

                TextColumn::make('TenVT')
                    ->searchable()
                    ->label('Tên vật tư'),

                TextColumn::make('donvitinh.TenDVT')
                    ->alignCenter()
                    ->label('Đơn vị tính'),

                TextColumn::make('KichThuoc')
                    ->label('Kích thước'),

                TextColumn::make('MauSac')
                    ->label('Màu sắc'),

                TextColumn::make('DacDiem')
                    ->label('Dặc điểm'),

                IconColumn::make('LaTP')
                    ->alignCenter()
                    ->boolean()
                    ->label('Là thành phẩm'),
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
                    //                    DeleteAction::make(),
                ]),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    //                    Tables\Actions\DeleteBulkAction::make(),
                ]),
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
