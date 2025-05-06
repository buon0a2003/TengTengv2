<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use Filament\Tables;
use App\Models\taixe;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Support\Colors\Color;
use Filament\Forms\Components\Radio;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use App\Filament\Resources\TaixeResource\Pages;

class TaixeResource extends Resource
{
    protected static ?string $model = taixe::class;

    protected static ?string $modelLabel = 'Tài xế';

    protected static ?string $navigationIcon = 'heroicon-o-user';

    protected static ?string $navigationLabel = 'Tài xế';
    protected static ?int $navigationSort = 3;

    protected static ?string $navigationGroup = 'Quản lý vận chuyển';

    protected static ?string $slug = 'taixe';

    public static function getBreadcrumb(): string
    {
        return 'Tài xế';
    }

    public static $trangthai = [
        0 => 'Đang giao',
        1 => 'Có sẵn',
        2 => 'Nghỉ'
    ];
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin tài xế')
                    ->description('Thông tin chi tiết về tài xế mới')
                    ->aside()
                    ->schema([
                        Radio::make('TrangThai')
                            ->visibleOn('edit')
                            ->inline()
                            ->live()
                            ->label('Trạng thái')
                            ->options(self::$trangthai),
                        TextInput::make('TenTaiXe')
                            ->label('Tên tài xế')
                            ->required(),
                        TextInput::make('Sdt')
                            ->label('Số điện thoại')
                            ->required()->unique(ignoreRecord: true)
                            ->prefix('+84')
                            ->regex('/^(0\d{9}|[1-9]\d{8})$/')
                            ->validationMessages([
                                'regex' => 'Số điện thoại sai quy cách.',
                            ])
                            ->validationMessages([
                                'unique' => 'Số điện thoại này đã tồn tại.',
                            ]),
                        TextInput::make('CCCD')
                            ->label('Số căn cước')
                            ->unique(ignoreRecord: true)
                            ->required()
                            ->validationMessages([
                                'unique' => 'Số CCCD này đã tồn tại.',
                            ]),
                        TextInput::make('BangLai')
                            ->label('Bằng lái')
                            ->required(),
                        TextInput::make('DiaChi')
                            ->label('Địa chỉ'),
                        DatePicker::make('NamSinh')
                            ->label('Ngày sinh')
                            ->displayFormat('d/m/Y'),
                        Textarea::make('GhiChu')
                            ->label('Ghi chú'),
                    ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->emptyStateHeading('Không có tài xế')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('TenTaiXe')
                    ->label('Tên tài xế')
                    ->searchable(),
                TextColumn::make('Sdt')
                    ->label('Số điện thoại')
                    ->searchable(),
                TextColumn::make('CCCD')
                    ->label('Số căn cước')
                    ->searchable(),
                TextColumn::make('BangLai')
                    ->label('Bằng lái')
                    ->searchable(),
                TextColumn::make('DiaChi')
                    ->label('Địa chỉ')
                    ->searchable(),
                TextColumn::make('NamSinh')
                    ->label('Năm sinh')
                    ->date('d/m/Y')
                    ->searchable(),
                TextColumn::make('GhiChu')
                    ->label('Ghi chú')
                    ->searchable(),
                TextColumn::make('TrangThai')
                    ->label('Trạng thái')
                    ->alignCenter()
                    ->formatStateUsing(fn($record) => match ($record->TrangThai) {
                        0 => 'Đang giao',
                        1 => 'Có sẵn',
                        2 => 'Nghỉ',
                        default => 'N/A'
                    })
                    ->badge()
                    ->color(fn($record): string => match ($record->TrangThai) {
                        0 => 'success',
                        1 => 'info',
                        2 => 'danger',
                        default => ''
                    })
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListTaixes::route('/'),
            'create' => Pages\CreateTaixe::route('/create'),
            'edit' => Pages\EditTaixe::route('/{record}/edit'),
        ];
    }
}
