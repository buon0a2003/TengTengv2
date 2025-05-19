<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use Filament\Tables;
use Filament\Forms\Form;
use App\Models\donvitinh;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Notifications\Notification;
use Filament\Tables\Actions\DeleteAction;
use App\Filament\Exports\DonvitinhExporter;
use Filament\Tables\Actions\ExportBulkAction;
use App\Filament\Resources\DonvitinhResource\Pages;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;

class DonvitinhResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = donvitinh::class;

    protected static ?string $modelLabel = 'Đơn vị tính';

    protected static ?string $navigationIcon = 'heroicon-o-swatch';

    protected static ?string $activeNavigationIcon = 'heroicon-s-swatch';

    protected static ?int $navigationSort = 1;

    protected static ?string $navigationLabel = 'Đơn vị tính';

    protected static ?string $navigationGroup = 'Quản lý danh mục';

    protected static ?string $slug = 'donvitinh';

    public static function getBreadcrumb(): string
    {
        return 'Đơn vị tính';
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
                Section::make('Điền thông tin đơn vị tính')
                    ->description('Thông tin cụ thể về tên, mô tả của đơn vị tính mới.')
                    ->aside()
                    ->schema([
                        TextInput::make('TenDVT')
                            ->label('Tên đơn vị tính')
                            ->required()
                            ->unique(ignoreRecord: true)
                            ->validationMessages([
                                'unique' => 'Đơn vị tính này đã tồn tại.',
                            ]),
                        Textarea::make('Mota')
                            ->label('Mô tả'),
                    ]),
                Section::make('Ngưỡng cảnh báo tồn kho')
                    ->description('Thông tin cụ thể về ngưỡng cảnh báo của đơn vị tính mới. (Số lượng tồn kho dưới ngưỡng này sẽ được hiển thị trong bảng thống kê)')
                    ->columns([
                        'sm' => 3,
                        'xl' => 3,
                    ])
                    ->schema([
                        TextInput::make('low')
                            ->label('Ngưỡng thấp')
                            ->numeric()
                            ->default(0)
                            ->required(),
                        TextInput::make('very_low')
                            ->label('Ngưỡng rất thấp')
                            ->lt('low')
                            ->numeric()
                            ->default(0)
                            ->required(),
                        TextInput::make('critical')
                            ->label('Ngưỡng nguy hiểm')
                            ->lt('very_low')
                            ->default(0)
                            ->numeric()
                            ->required(),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->emptyStateHeading('Không có đơn vị tính')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã')
                    ->searchable(),
                TextColumn::make('TenDVT')
                    ->label('Tên đơn vị tính')
                    ->searchable(),
                TextColumn::make('Mota')
                    ->label('Mô tả')
                    ->searchable(),
                TextColumn::make('low')
                    ->alignEnd()
                    ->label('Ngưỡng thấp'),
                TextColumn::make('very_low')
                    ->alignEnd()
                    ->label('Ngưỡng rất thấp'),
                TextColumn::make('critical')
                    ->alignEnd()
                    ->label('Ngưỡng nguy hiểm'),
                TextColumn::make('created_at')->sortable()->label('Ngày tạo')->dateTime('d/m/Y')->wrap(),

            ])
            ->filters([
                //
            ])
            ->actions([
                EditAction::make()->color('amber'),
                DeleteAction::make()
                    ->action(
                        function ($record): void {
                            if ($record->vattu()->count() > 0) {
                                Notification::make()
                                    ->danger()
                                    ->title('Xoá không thành công')
                                    ->body('Đơn vị tính đang được sử dụng bởi vật tư!')
                                    ->send();

                                return;
                            }
                            $record->delete();
                            Notification::make()
                                ->danger()
                                ->title('Xoá  thành công')
                                ->body('Đơn vị tính đã xoá thành công!')
                                ->send();
                        }
                    ),
            ])
            ->bulkActions([
                ExportBulkAction::make()
                    ->exporter(DonvitinhExporter::class)
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
            'index' => Pages\ListDonvitinhs::route('/'),
            'create' => Pages\CreateDonvitinh::route('/create'),
            'edit' => Pages\EditDonvitinh::route('/{record}/edit'),
        ];
    }
}
