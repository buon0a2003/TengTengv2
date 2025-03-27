<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuNhapResource\Pages;
use App\Filament\Resources\PhieuNhapResource\RelationManagers;
use App\Models\chitietphieunhap;
use App\Models\phieunhap;
use App\Models\vattu;
use Filament\Forms;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Wizard;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use function Laravel\Prompts\select;

class PhieuNhapResource extends Resource
{
    protected static ?string $model = phieunhap::class;
    public static function getBreadcrumb(): string
    {
        return 'Phiếu nhập';
    }
    protected static ?string $navigationIcon = 'heroicon-o-newspaper';
    protected static ?string $navigationLabel = 'Phiếu nhập';
    protected static ?string $navigationGroup = 'Quản lý Nhập & Xuất';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Wizard::make([
                    Wizard\Step::make('Thông tin phiếu nhập')
                        ->schema([
                            Forms\Components\Section::make('Thông tin chính')
                                ->description('Thông tin chi tiết phiếu nhập')
                                ->aside()
                                ->schema([
                                    Forms\Components\Radio::make('LyDo')
//                                        ->required()
                                        ->inline()
                                        ->label('Lý do nhập hàng?')
                                        ->options([
                                            '0' => 'Nhập sản xuất',
                                            '1' => 'Nhập nguyên vật liệu'
                                        ]),

                                    Forms\Components\TextInput::make('id')
                                        ->placeholder('eg: PN001/xx/xx')
//                                        ->required()
                                        ->label('Mã phiếu nhập'),

                                    Select::make('user_id')
                                        ->label('Người tạo phiếu')
                                        ->relationship('user', 'name')
//                                        ->required()
                                        ->preload()
                                        ->searchable(),

                                    Select::make('nhacungcap_id')
                                        ->label('Nhà cung cấp')
                                        ->relationship('nhacungcap', 'TenNCC')
                                        ->preload()
                                        ->searchable(),

                                    Select::make('kho_id')
                                        ->label('Kho')
                                        ->relationship('kho', 'TenKho')
//                                        ->required()
                                        ->preload()
                                        ->searchable(),
                                ]),


                            Forms\Components\Section::make('Thông tin phụ')
                                ->aside()
                                ->description('Thông tin phụ của phiếu nhập')
                                ->schema([
                                    Forms\Components\DatePicker::make('NgayNhap')
//                                        ->required()
                                        ->label('Ngày nhập'),

                                    Forms\Components\Textarea::make('GhiChu')
                                        ->label('Ghi chú'),
                                ]),

                            Forms\Components\Section::make('Trạng thái')
                                ->description('Trạng thái của phiếu nhập')
                                ->aside()
                                ->visibleOn('edit')
                                ->schema([
                                    Forms\Components\Radio::make('TrangThai')
                                        ->label('Trạng thái')
                                        ->inline()
                                        ->visibleOn('edit')
                                        ->options([
                                            '0' => 'Đang xử lí',
                                            '1' => 'Đã xử lí',
                                            '2' => 'Đã huỷ',
                                        ])
                                ])
                        ]),
                    Wizard\Step::make('Thông tin chi tiết phiếu nhập')
                        ->schema([
                            Repeater::make('dsvattu')
                                ->schema([
                                    Select::make('vattu')
                                        ->searchable()
                                        ->label('Vật tư')
                                        ->options(vattu::all()->pluck('TenVT', 'id'))
                                        ->required(),
                                    TextInput::make('soluong')->label('Số lượng')->numeric()->required(),
                                    TextInput::make('ghichu')->label('Ghi chú')->columnSpan(2),
                                ])
                                ->columns(2)
                        ])->visibleOn('create'),
                ])->columnSpanFull()->skippable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu'),

                TextColumn::make('nhacungcap.TenNCC')
                    ->label('Nhà cung cấp'),

                TextColumn::make('NgayNhap')
                    ->label('Ngày nhập')
                    ->date('d/m/Y')
                    ->searchable(),

                TextColumn::make('user.name')
                    ->label('Người nhập')
                    ->searchable(),

                TextColumn::make('kho.TenKho')
                ->label('Kho'),

                TextColumn::make('LyDo')
                    ->label('Lý do')
                    ->formatStateUsing(fn ($record) => $record->LyDo == 1 ? 'Nhập nguyên vật liệu' : 'Nhập sản xuất')
                    ->badge()
                    ->color(fn ($record): string =>  $record->LyDo == 1 ? 'success' : 'info')
                    ->searchable(),

                TextColumn::make('TrangThai')
                    ->label('Trạng thái'),

                TextColumn::make('GhiChu')
                    ->label('Ghi chú'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                // xoá thì phải để oncasade cho chi tiet phieu nhap nua
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            RelationManagers\ChitietphieunhapRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPhieuNhaps::route('/'),
            'create' => Pages\CreatePhieuNhap::route('/create'),
            'edit' => Pages\EditPhieuNhap::route('/{record}/edit'),
        ];
    }
}
