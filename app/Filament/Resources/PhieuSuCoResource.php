<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Models\phieusuco;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Table;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Hidden;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\DeleteAction;
use Filament\Forms\Components\Actions\Action as FormAction;
use Illuminate\Support\Facades\Auth;
use App\Filament\Resources\PhieuSuCoResource\Pages;

class PhieuSuCoResource extends Resource
{
    protected static ?string $model = phieusuco::class;

    protected static ?string $modelLabel = 'Phiếu sự cố';

    protected static ?string $navigationIcon = 'heroicon-o-exclamation-triangle';

    protected static ?string $navigationLabel = 'Phiếu sự cố';

    protected static ?string $navigationGroup = 'Quản lý vận chuyển';

    protected static ?int $navigationSort = 99;

    protected static ?string $slug = 'phieusuco';

    public static function getBreadcrumb(): string
    {
        return 'Phiếu sự cố';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin chính')
                    ->description('Thông tin chi tiết phiếu sự cố')
                    ->aside()
                    ->schema([
                        TextInput::make('id')
                            ->placeholder('eg: PSC001/xx/xx')
                            ->unique(ignoreRecord: true)
                            ->required()
                            ->label('Mã phiếu sự cố')
                            ->maxLength(20)
                            ->prefixAction(
                                FormAction::make('suggest')
                                    ->icon('heroicon-m-sparkles')
                                    ->requiresConfirmation()
                                    ->color('info')
                                    ->modalHeading('Tạo mã phiếu sự cố')
                                    ->modalDescription('Đặt mã phiếu sự cố tự động theo định dạng PSCddmmyy')
                                    ->action(function ($set) {
                                        $newId = 'PSC';
                                        $set('id', $newId . now()->format('dmy'));
                                    })
                            ),

                        TextInput::make('phieuxuat_id')->readOnly()
                            ->label('Phiếu xuất')
                            ->placeholder('Chọn phiếu xuất')
                            ->prefixAction(
                                FormAction::make('phieuxuat_select')
                                    ->icon('heroicon-m-list-bullet')
                                    ->color('info')
                                    ->modalHeading('Chọn phiếu xuất')
                                    ->modalWidth('6xl')
                                    ->modalContent(view('filament.phieuxuatlist'))
                                    ->action(null)
                                    ->modalCancelAction(false)
                                    ->modalSubmitActionLabel('Xong')
                            ),

                        TextInput::make('phieuvanchuyen_id')
                            ->label('Phiếu vận chuyển')
                            ->placeholder('Chọn phiếu vận chuyển')
                            ->prefixAction(
                                FormAction::make('phieuvanchuyen_select')
                                    ->icon('heroicon-m-list-bullet')
                                    ->color('info')
                                    ->modalHeading('Chọn phiếu vận chuyển')
                                    ->modalWidth('6xl')
                                    ->modalContent(view('filament.phieuvanchuyenlist'))
                                    ->action(null)
                                    ->modalCancelAction(false)
                                    ->modalSubmitActionLabel('Xong')
                            ),

                        Select::make('user_id')
                            ->label('Người tạo phiếu')
                            ->relationship('user', 'name')
                            ->default(fn(): int => Auth::user()->id)
                            ->required()
                            ->preload()
                            ->searchable(),

                        Hidden::make('NgayTao')
                            ->default(now()),
                    ]),

                Section::make('Thông tin phụ')
                    ->aside()
                    ->description('Thông tin chi tiết về sự cố')
                    ->schema([
                        TextInput::make('Mota')
                            ->label('Mô tả sự cố')
                            ->required(),

                        Textarea::make('GhiChu')
                            ->label('Ghi chú'),

                        Select::make('TrangThai')
                            ->label('Trạng thái')
                            ->options([
                                0 => 'Mới tạo',
                                1 => 'Đang xử lý',
                                2 => 'Đã giải quyết',
                                3 => 'Đã hủy',
                            ])
                            ->default(0)
                            ->required(),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->emptyStateHeading('Không có phiếu sự cố')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->defaultSort('created_at', 'desc')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu')
                    ->searchable(),

                TextColumn::make('NgayTao')
                    ->label('Ngày tạo')
                    ->sortable()
                    ->dateTime('d/m/Y H:i'),

                TextColumn::make('phieuxuat.id')
                    ->label('Phiếu xuất')
                    ->searchable(),

                TextColumn::make('phieuvanchuyen.id')
                    ->label('Phiếu vận chuyển')
                    ->searchable(),

                TextColumn::make('user.name')
                    ->label('Người tạo')
                    ->searchable(),

                TextColumn::make('Mota')
                    ->label('Mô tả sự cố')
                    ->limit(30)
                    ->searchable(),

                TextColumn::make('TrangThai')
                    ->label('Trạng thái')
                    ->badge()
                    ->color(fn($record) => match ($record->TrangThai) {
                        0 => 'warning',
                        1 => 'info',
                        2 => 'success',
                        3 => 'danger',
                        default => 'gray',
                    })
                    ->formatStateUsing(fn($record) => match ($record->TrangThai) {
                        0 => 'Mới tạo',
                        1 => 'Đang xử lý',
                        2 => 'Đã giải quyết',
                        3 => 'Đã hủy',
                        default => 'Không xác định',
                    })
                    ->searchable()
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                ActionGroup::make([
                    ViewAction::make()->color('info'),
                    EditAction::make(),
                    DeleteAction::make(),
                ]),
            ])
            ->bulkActions([
                //
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
            'index' => Pages\ListPhieuSuCos::route('/'),
            'create' => Pages\CreatePhieuSuCo::route('/create'),
            'edit' => Pages\EditPhieuSuCo::route('/{record}/edit'),
        ];
    }

    public static function getPluralModelLabel(): string
    {
        return 'Phiếu sự cố';
    }
}
