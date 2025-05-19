<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\KhachHangResource\Pages;
use App\Models\khachhang;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ExportBulkAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;

class KhachHangResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = khachhang::class;

    protected static ?string $modelLabel = 'Khách hàng';

    protected static ?string $navigationIcon = 'heroicon-o-user-group';

    protected static ?string $activeNavigationIcon = 'heroicon-s-user-group';

    protected static ?int $navigationSort = 1;

    protected static ?string $navigationLabel = 'Khách hàng';

    protected static ?string $navigationGroup = 'Quản lý danh mục';

    protected static ?string $slug = 'khachhang';

    public static function getBreadcrumb(): string
    {
        return 'Khách hàng';
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
                Section::make('Thông tin bắt buộc')
                    ->description('Thông tin chi tiết của khách hàng mới')
                    ->aside()
                    ->schema([
                        TextInput::make('TenKH')->label('Tên khách hàng')->required()->unique(ignoreRecord: true),
                        TextInput::make('Sdt')->label('Số điện thoại')->required()->unique(ignoreRecord: true)
                            ->prefix('+84')
                            ->regex('/^(0\d{9}|[1-9]\d{8})$/')
                            ->validationMessages([
                                'regex' => 'Số điện thoại sai quy cách.',
                            ])
                            ->validationMessages([
                                'unique' => 'Số điện thoại này đã tồn tại.',
                            ]),
                        TextInput::make('DiaChi')->label('Địa chỉ')->required(),
                    ])->columnSpanFull(),

                Section::make('Thông tin không bắt buộc')
                    ->aside()
                    ->schema([
                        TextInput::make('Email'),
                        TextInput::make('GhiChu')->label('Ghi chú'),
                    ])->columnSpanFull(),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->emptyStateHeading('Không có khách hàng')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('id')->label('Mã'),
                TextColumn::make('TenKH')->searchable()->label('Tên khách hàng')->wrap(),
                TextColumn::make('Sdt')->searchable()->label('Số điện thoại')->wrap(),
                TextColumn::make('Email')->searchable()->wrap(),
                TextColumn::make('DiaChi')->searchable()->label('Địa chỉ')->wrap(),
                TextColumn::make('GhiChu')->label('Ghi chú')->wrap(),
                TextColumn::make('created_at')->sortable()->label('Ngày tạo')->dateTime('d/m/Y')->wrap(),
            ])->striped()
            ->filters([
                SelectFilter::make('DiaChi')
                    ->label('Địa chỉ')
                    ->options([
                        'Hải Phòng' => 'Hải Phòng',
                        'Hà Nội' => 'Hà Nội',
                    ]),
            ])
            ->actions([
                ActionGroup::make([
                    ViewAction::make()->color('secondary'),
                    EditAction::make()->color('primary'),
                ]),
            ])
            ->bulkActions([
                //
                ExportBulkAction::make()
                    ->exporter(\App\Filament\Exports\KhachhangExporter::class)
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
            'index' => Pages\ListKhachHangs::route('/'),
            'create' => Pages\CreateKhachHang::route('/create'),
            'edit' => Pages\EditKhachHang::route('/{record}/edit'),
        ];
    }
}
