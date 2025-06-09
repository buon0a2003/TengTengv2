<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\NhaCungCapResource\Pages;
use App\Filament\Resources\NhaCungCapResource\RelationManagers\PhieunhapRelationManager;
use App\Models\nhacungcap;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ExportBulkAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Notifications\Notification;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;

class NhaCungCapResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = nhacungcap::class;

    protected static ?string $modelLabel = 'Nhà cung cấp';

    protected static ?string $navigationIcon = 'heroicon-o-briefcase';

    protected static ?string $activeNavigationIcon = 'heroicon-s-briefcase';

    protected static ?int $navigationSort = 1;

    protected static ?string $navigationLabel = 'Nhà cung cấp';

    protected static ?string $navigationGroup = 'Quản lý danh mục';

    protected static ?string $slug = 'nhacungcap';

    public static function getBreadcrumb(): string
    {
        return 'Nhà cung cấp';
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

                Section::make('Thông tin bắt buộc')
                    ->description('Nhập thông tin chi tiết nhà cung cấp')
                    ->aside()
                    ->schema([
                        TextInput::make('TenNCC')
                            ->required()
                            ->label('Tên')
                            ->unique(ignoreRecord: true),
                        TextInput::make('Sdt')
                            ->prefix('+84')
                            ->regex('/^(0\d{9}|[1-9]\d{8})$/')
                            ->validationMessages([
                                'regex' => 'Số điện thoại sai quy cách.',
                            ])
                            ->required()
                            ->label('Số điện thoại')
                            ->unique(ignoreRecord: true)
                            ->validationMessages([
                                'unique' => 'Số điện thoại này đã tồn tại.',
                            ]),
                        TextInput::make('DiaChi')
                            ->required()
                            ->label('Địa chỉ'),
                        TextInput::make('MaSoThue')
                            ->required()
                            ->label('Mã Số thuế'),
                    ])->columnSpan(2),

                Section::make('Thông tin không bắt buộc')
                    ->description('Nhập thông tin khác của nhà cung cấp')
                    ->aside()
                    ->schema([
                        TextInput::make('Email')
                            ->email()
                            ->label('Email'),
                        Textarea::make('GhiChu')
                            ->label('Ghi chú')
                            ->rows(3)
                            ->columnSpan(1),
                    ])->columnSpan(2),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->emptyStateHeading('Không có nhà cung cấp')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('TenNCC')
                    ->label('Tên')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('Sdt')
                    ->label('Số điện thoại')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('Email')
                    ->label('Email')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('DiaChi')
                    ->label('Địa chỉ')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('MaSoThue')
                    ->label('Mã Số thuế')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),

                TextColumn::make('GhiChu')
                    ->label('Ghi chú')
                    ->alignLeft()
                    ->limit(50)
                    ->wrap()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->tooltip(fn($record) => $record->GhiChu),
            ])
            ->striped()
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
                    DeleteAction::make()
                        ->action(
                            function ($record): void {
                                if ($record->phieunhap()->count() > 0) {
                                    Notification::make()
                                        ->danger()
                                        ->title('Xoá không thành công')
                                        ->body('Nhà cung cấp đang được sử dụng trong phiếu nhập!')
                                        ->send();

                                    return;
                                }
                                $record->delete();
                                Notification::make()
                                    ->success()
                                    ->title('Xoá thành công')
                                    ->body('Nhà cung cấp đã xoá thành công!')
                                    ->send();
                            }
                        ),
                ]),
            ])
            ->bulkActions([
                //
                ExportBulkAction::make()
                    ->label('Xuất Excel')
                    ->icon('heroicon-o-document-arrow-down')
                    ->color('primary')
                    ->exporter(\App\Filament\Exports\NhacungcapExporter::class),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            PhieunhapRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListNhaCungCaps::route('/'),
            'create' => Pages\CreateNhaCungCap::route('/create'),
            'edit' => Pages\EditNhaCungCap::route('/{record}/edit'),
        ];
    }
}
