<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Resources\PhieuVanChuyenResource\Pages;
use App\Models\phieuvanchuyen;
use Filament\Forms\Components\Actions\Action as FormAction;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Support\Facades\Auth;

class PhieuVanChuyenResource extends Resource
{
    protected static ?string $model = phieuvanchuyen::class;

    protected static ?string $modelLabel = 'Phiếu vận chuyển';

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?int $navigationSort = 3;

    protected static ?string $navigationLabel = 'Phiếu vận chuyển';

    protected static ?string $navigationGroup = 'Quản lý vận chuyển';

    protected static ?string $slug = 'phieuvanchuyen';

    public static function getBreadcrumb(): string
    {
        return 'Phiếu vận chuyển';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin chính')
                    ->description('Thông tin chi tiết phiếu vận chuyển')
                    ->aside()
                    ->schema([
                        TextInput::make('id')
                            ->placeholder('eg: PVC001/xx/xx')
                            ->unique(ignoreRecord: true)
                            // ->required()
                            ->label('Mã phiếu vận chuyển')
                            ->prefixAction(
                                FormAction::make('suggest')
                                    ->icon('heroicon-m-sparkles')
                                    ->requiresConfirmation()
                                    ->color('info')
                                    ->modalHeading('Tạo mã phiếu vận chuyển')
                                    ->modalDescription('Đặt mã phiếu vận chuyển tự động theo định dạng PNddmmyy')
                                    ->action(function ($set) {
                                        $newId = 'PVC';
                                        $set('id', $newId.now()->format('dmy'));
                                    })
                            ),

                        Select::make('user_id')
                            ->label('Người tạo phiếu')
                            ->relationship('user', 'name')
                            ->default(fn (): int => Auth::user()->id)
                            // ->required()
                            ->preload()
                            ->searchable(),

                        Hidden::make('NgayTao')
                            ->default(now()),

                        TextInput::make('phieuxuat_id')->label('Phiếu xuất')
                            // ->required()
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
                        Hidden::make('taixe_id'),
                        TextInput::make('tentaixe')->label('Tài xế')
                            // ->required()
                            ->placeholder('Chọn tài xế')
                            ->prefixAction(
                                FormAction::make('phieuxuat_select')
                                    ->icon('heroicon-m-user')
                                    ->color('info')
                                    ->modalHeading('Chọn tài xế')
                                    ->modalWidth('6xl')
                                    ->modalContent(view('filament.taixelist'))
                                    ->action(null)
                                    ->modalCancelAction(false)
                                    ->modalSubmitActionLabel('Xong')
                            ),
                        Hidden::make('xetai_id'),
                        TextInput::make('Bienso')->label('Xe tải')
                            // ->required()
                            ->placeholder('Chọn xe tải')
                            ->prefixAction(
                                FormAction::make('phieuxuat_select')
                                    ->icon('heroicon-m-truck')
                                    ->color('info')
                                    ->modalHeading('Chọn xe vận chuyển')
                                    ->modalWidth('6xl')
                                    ->modalContent(view('filament.xetailist'))
                                    ->action(null)
                                    ->modalCancelAction(false)
                                    ->modalSubmitActionLabel('Xong')
                            ),
                    ]),
                Section::make('Thông tin phụ')
                    ->aside()
                    ->description('Thông tin chi tiết phiếu vận chuyển')
                    ->schema([
                        DatePicker::make('NgayVanChuyen')
                            ->displayFormat('d/m/Y')
                            // ->default(now())
                            ->placeholder('Chọn ngày vận chuyển')
                            // ->required()
                            ->label('Ngày vận chuyển'),
                        // ->reactive()
                        // ->afterStateUpdated(function ($state, callable $ set) {
                        //     if ($state) {
                        //         $set('NgayVanChuyen', now()->format('d/m/Y'));
                        //     }
                        // }),
                        Textarea::make('GhiChu')
                            ->label('Ghi chú'),
                    ]),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->emptyStateHeading('Không có phiếu vận chuyển')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->defaultSort('TrangThai', 'asc')
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu'),
                TextColumn::make('NgayTao')
                    ->label('Ngày tạo')
                    ->sortable()
                    ->date('d/m/Y'),
                TextColumn::make('NgayVanChuyen')
                    ->label('Ngày vận chuyển')
                    ->sortable()
                    ->date('d/m/Y'),
                TextColumn::make('phieuxuat.id')
                    ->label('Mã phiếu xuất')
                    ->url(fn ($record) => route('filament.admin.resources.phieuxuat.view', $record->phieuxuat_id))
                    ->searchable(),
                TextColumn::make('XeTai.BienSo')
                    ->url(fn ($record) => route('filament.admin.resources.xetai.edit', $record->xetai_id))
                    ->alignCenter()
                    ->badge()
                    ->color('gray')
                    ->label('Xe vận chuyển'),
                TextColumn::make('taixe.TenTaiXe')
                    ->url(fn ($record) => route('filament.admin.resources.taixe.edit', $record->taixe_id))
                    ->label('Tên tài xế')
                    ->searchable(),
                TextColumn::make('GhiChu')
                    ->label('Ghi chú'),
                TextColumn::make('TrangThai')
                    ->label('Trạng thái')
                    ->badge()
                    ->color(fn ($record) => match ($record->TrangThai) {
                        0 => 'warning',
                        1 => 'info',
                        2 => 'success',
                        3 => 'danger',
                        default => 'gray',
                    })
                    ->formatStateUsing(fn ($record) => match ($record->TrangThai) {
                        0 => 'Chưa vận chuyển',
                        1 => 'Đang vận chuyển',
                        2 => 'Đã hoàn thành',
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
                    DeleteAction::make(),
                    EditAction::make(),
                    Action::make('batdauvanchuyen')->label('Vận chuyển')
                        // ->authorize(fn(): bool => Auth::user()->can('duyetphieuxuat_phieu::xuat'))
                        ->hidden(fn ($record): bool => ! $record->TrangThai == 0)
                        ->action(
                            function (phieuvanchuyen $record) {
                                $record->update([
                                    'TrangThai' => 1,
                                ]);

                                $record->xetai()->update([
                                    'TrangThai' => 0,
                                ]);

                                $record->taixe()->update([
                                    'TrangThai' => 0,
                                ]);

                                Notification::make()
                                    ->title('Vận chuyển')
                                    ->body('Đã bắt đầu vận chuyển phiếu: '.$record->id)
                                    ->success()
                                    ->duration(1000)
                                    ->send();
                            }
                        )
                        ->color('success')
                        ->icon('heroicon-o-check'),
                    Action::make('hoanthanhvc')->label('Hoàn thành vận chuyển')
                        // ->authorize(fn(): bool => Auth::user()->can('duyetphieuxuat_phieu::xuat'))
                        ->hidden(fn ($record): bool => ! $record->TrangThai == 1)
                        ->action(
                            function (phieuvanchuyen $record) {
                                $record->update([
                                    'TrangThai' => 2,
                                ]);

                                $record->xetai()->update([
                                    'TrangThai' => 1,
                                ]);

                                $record->taixe()->update([
                                    'TrangThai' => 1,
                                ]);

                                Notification::make()
                                    ->title('Vận chuyển')
                                    ->body('Đã hoaàn thành vận chuyển phiếu: '.$record->id)
                                    ->success()
                                    ->duration(1000)
                                    ->send();
                            }
                        )
                        ->color('yellow')
                        ->icon('heroicon-o-check-badge'),
                    Action::make('huyphieuxuat')->label('Huỷ phiếu vận chuyển')
                        // ->authorize(fn(): bool => Auth::user()->can('duyetphieuxuat_phieu::xuat'))
                        ->action(
                            function (phieuvanchuyen $record) {
                                $record->update([
                                    'TrangThai' => 3,
                                ]);

                                Notification::make()
                                    ->title('Huỷ phiếu')
                                    ->body('Đã huỷ phiếu: '.$record->id)
                                    ->success()
                                    ->duration(1000)
                                    ->send();
                            }
                        )
                        ->hidden(fn ($record): bool => ! $record->TrangThai == 0)
                        ->color('danger')
                        ->icon('heroicon-o-x-circle'),

                ]),
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
            'index' => Pages\ListPhieuVanChuyens::route('/'),
            'create' => Pages\CreatePhieuVanChuyen::route('/create'),
            'edit' => Pages\EditPhieuVanChuyen::route('/{record}/edit'),
        ];
    }
}
