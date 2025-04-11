<?php

namespace App\Filament\Resources;

use App\Filament\Resources\KhachHangResource\Pages;
use App\Filament\Resources\KhachHangResource\RelationManagers;
use App\Models\khachhang;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ExportBulkAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class KhachHangResource extends Resource
{
    protected static ?string $model = khachhang::class;

    protected static ?string $modelLabel = 'Khách hàng';
    public static function getBreadcrumb(): string
    {
        return 'Khách hàng';
    }
    protected static ?string $navigationIcon = 'heroicon-o-user-group';

    protected static ?int $navigationSort = 1;
    protected static ?string $navigationLabel = 'Khách hàng';
    protected static ?string $navigationGroup = 'Quản lý danh mục';
    protected static ?string $slug = 'khachhang';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin bắt buộc')
                    ->description('Thông tin chi tiết của khách hàng mới')
                    ->aside()
                    ->schema([
                    TextInput::make('TenKH')->label('Tên khách hàng')->required(),
                    TextInput::make('Sdt')->label('Số điện thoại')->required()->unique(ignoreRecord: true)
                        ->prefix('+84')
                        ->regex('/^(0\d{9}|[1-9]\d{8})$/')
                        ->validationMessages([
                            'regex' => 'Số điện thoại sai quy cách.'
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
                    ])
            ])
            ->actions([
                ActionGroup::make([
                    ViewAction::make()->color('secondary'),
                    EditAction::make()->color('primary'),
                ]),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
//                    Tables\Actions\DeleteBulkAction::make(),
                ]),
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
