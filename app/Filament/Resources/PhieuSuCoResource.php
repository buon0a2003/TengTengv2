<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use Filament\Forms\Form;
use App\Models\phieusuco;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Illuminate\Support\Facades\Auth;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Illuminate\Database\Eloquent\Collection;
use Filament\Forms\Components\DateTimePicker;
use App\Filament\Resources\PhieuSuCoResource\Pages;
use Filament\Forms\Components\Actions\Action as FormAction;
use Filament\Support\Enums\MaxWidth;

class PhieuSuCoResource extends Resource
{
    protected static ?string $model = phieusuco::class;

    protected static ?string $modelLabel = 'Phiếu sự cố';

    protected static ?string $navigationIcon = 'heroicon-o-exclamation-triangle';

    protected static ?string $activeNavigationIcon = 'heroicon-s-exclamation-triangle';

    protected static ?string $navigationLabel = 'Phiếu sự cố';

    protected static ?string $navigationGroup = 'Quản lý vận chuyển';

    protected static ?int $navigationSort = 3;

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
                    ->sortable()
                    ->searchable(),

                TextColumn::make('NgayTao')
                    ->label('Ngày tạo')
                    ->sortable()
                    ->dateTime('d/m/Y H:i'),

                TextColumn::make('phieuxuat.id')
                    ->label('Phiếu xuất')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('phieuvanchuyen.id')
                    ->label('Phiếu vận chuyển')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('user.name')
                    ->label('Người tạo')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('Mota')
                    ->label('Mô tả sự cố')
                    ->limit(30)
                    ->wrap()
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
                    \Filament\Tables\Actions\Action::make('changeStatus')
                        ->label('Đổi trạng thái')
                        ->icon('heroicon-o-arrow-path')
                        ->color('success')
                        ->form([
                            Select::make('TrangThai')
                                ->label('Trạng thái mới')
                                ->options([
                                    0 => 'Mới tạo',
                                    1 => 'Đang xử lý',
                                    2 => 'Đã giải quyết',
                                    3 => 'Đã hủy',
                                ])
                                ->required()
                        ])
                        ->modalWidth(MaxWidth::Small)
                        ->action(function (phieusuco $record, array $data): void {
                            $record->TrangThai = $data['TrangThai'];
                            $record->save();
                        })
                        ->successNotificationTitle('Đã cập nhật trạng thái phiếu sự cố'),
                ]),
            ])
            ->bulkActions([
                \Filament\Tables\Actions\BulkAction::make('bulkChangeStatus')
                    ->label('Đổi trạng thái')
                    ->icon('heroicon-o-arrow-path')
                    ->color('success')
                    ->form([
                        Select::make('TrangThai')
                            ->label('Trạng thái mới')
                            ->options([
                                0 => 'Mới tạo',
                                1 => 'Đang xử lý',
                                2 => 'Đã giải quyết',
                                3 => 'Đã hủy',
                            ])
                            ->required()
                    ])
                    ->action(function (Collection $records, array $data): void {
                        $records->each(function ($record) use ($data): void {
                            $record->TrangThai = $data['TrangThai'];
                            $record->save();
                        });
                    })
                    ->deselectRecordsAfterCompletion()
                    ->successNotificationTitle('Đã cập nhật trạng thái các phiếu sự cố'),
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
