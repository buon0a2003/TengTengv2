<?php

declare(strict_types=1);

namespace App\Filament\Resources;

use App\Filament\Exports\PhieuvanchuyenExporter;
use App\Filament\Resources\PhieuVanChuyenResource\Pages\CreatePhieuVanChuyen;
use App\Filament\Resources\PhieuVanChuyenResource\Pages\EditPhieuVanChuyen;
use App\Filament\Resources\PhieuVanChuyenResource\Pages\ListPhieuVanChuyens;
use App\Models\phieuvanchuyen;
use BezhanSalleh\FilamentShield\Contracts\HasShieldPermissions;
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
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\ActionGroup;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\ExportBulkAction;
use Filament\Tables\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class PhieuVanChuyenResource extends Resource implements HasShieldPermissions
{
    protected static ?string $model = phieuvanchuyen::class;

    protected static ?string $modelLabel = 'Phiếu vận chuyển';

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $activeNavigationIcon = 'heroicon-s-rectangle-stack';

    protected static ?int $navigationSort = 1;

    protected static ?string $navigationLabel = 'Phiếu vận chuyển';

    protected static ?string $navigationGroup = 'Quản lý vận chuyển';

    protected static ?string $slug = 'phieuvanchuyen';

    public static function getBreadcrumb(): string
    {
        return 'Phiếu vận chuyển';
    }

    public static function getNavigationBadgeTooltip(): ?string
    {
        return 'Số lượng phiếu vận chuyển đang xử lý';
    }

    public static function getNavigationBadge(): ?string
    {
        return (string) static::getModel()::where('TrangThai', 0)->count();
    }

    public static function getPermissionPrefixes(): array
    {
        return [
            'view',
            'view_any',
            'create',
            'update',
            'delete',
            'delete_any',
            'duyetphieuvanchuyen',
        ];
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
                            ->placeholder('eg: PVCddmmyy-XXX')
                            ->unique(ignoreRecord: true)
                            ->required()
                            ->label('Mã phiếu vận chuyển')
                            ->prefixAction(
                                FormAction::make('suggest')
                                    ->icon('heroicon-m-sparkles')
                                    ->requiresConfirmation()
                                    ->color('info')
                                    ->modalHeading('Tạo mã phiếu vận chuyển')
                                    ->modalDescription('Đặt mã phiếu vận chuyển tự động theo định dạng PVCddmmyy-XXX')
                                    ->action(function ($set) {
                                        $today = now()->format('dmy');
                                        $lastRecord = phieuvanchuyen::where('id', 'like', "PVC{$today}-%")
                                            ->orderBy('id', 'desc')
                                            ->first();

                                        $sequence = 1;
                                        if ($lastRecord) {
                                            $lastSequence = (int) mb_substr($lastRecord->id, -3);
                                            $sequence = $lastSequence + 1;
                                        }

                                        $newId = sprintf('PVC%s-%03d', $today, $sequence);
                                        $set('id', $newId);
                                    })
                            ),

                        Select::make('user_id')
                            ->label('Người tạo phiếu')
                            ->relationship('user', 'name')
                            ->default(fn(): int => Auth::user()->id)
                            ->required()
                            ->disabled()
                            ->dehydrated(),

                        Hidden::make('NgayTao')
                            ->default(now()),

                        TextInput::make('phieuxuat_id')->label('Phiếu xuất')
                            ->required()
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
                            ->required()
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
                            ->required()
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
                            ->default(now())
                            ->placeholder('Chọn ngày vận chuyển')
                            ->required()
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
            ->defaultSort(function (Builder $query): Builder {
                return $query
                    ->orderBy('TrangThai', 'asc')
                    ->orderBy('NgayVanChuyen', 'desc');
            })
            ->columns([
                TextColumn::make('id')
                    ->label('Mã phiếu')
                    ->alignLeft()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('NgayTao')
                    ->label('Ngày tạo')
                    ->alignCenter()
                    ->date('d/m/Y')
                    ->sortable(),
                TextColumn::make('NgayVanChuyen')
                    ->label('Ngày vận chuyển')
                    ->alignCenter()
                    ->date('d/m/Y')
                    ->sortable(),
                TextColumn::make('phieuxuat.id')
                    ->label('Mã phiếu xuất')
                    ->alignLeft()
                    ->url(fn($record) => route('filament.admin.resources.phieuxuat.view', $record->phieuxuat_id))
                    ->searchable()
                    ->sortable(),
                TextColumn::make('XeTai.BienSo')
                    ->label('Xe vận chuyển')
                    ->alignCenter()
                    ->badge()
                    ->color('gray')
                    ->url(fn($record) => route('filament.admin.resources.xetai.edit', $record->xetai_id))
                    ->searchable()
                    ->sortable(),
                TextColumn::make('taixe.TenTaiXe')
                    ->label('Tên tài xế')
                    ->alignLeft()
                    ->url(fn($record) => route('filament.admin.resources.taixe.edit', $record->taixe_id))
                    ->searchable()
                    ->sortable(),
                TextColumn::make('GhiChu')
                    ->label('Ghi chú')
                    ->alignLeft()
                    ->limit(50)
                    ->wrap()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->tooltip(fn($record) => $record->GhiChu),
                TextColumn::make('TrangThai')
                    ->label('Trạng thái')
                    ->alignCenter()
                    ->badge()
                    ->icon(fn($record): string => match ($record->TrangThai) {
                        1 => 'heroicon-o-clock',
                        2 => 'heroicon-o-check-circle',
                        3 => 'heroicon-o-x-circle',
                        default => '',
                    })
                    ->color(fn($record) => match ($record->TrangThai) {
                        0 => 'warning',
                        1 => 'info',
                        2 => 'success',
                        3 => 'danger',
                        default => 'gray',
                    })
                    ->formatStateUsing(fn($record) => match ($record->TrangThai) {
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
                    DeleteAction::make()
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieuvanchuyen_phieu::van::chuyen'))
                        ->visible(fn($record): bool => $record->TrangThai == 0),
                    EditAction::make()
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieuvanchuyen_phieu::van::chuyen'))
                        ->visible(fn($record): bool => $record->TrangThai == 0),
                    Action::make('batdauvanchuyen')->label('Vận chuyển')
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieuvanchuyen_phieu::van::chuyen'))
                        ->visible(fn($record): bool => $record->TrangThai == 0)
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
                                    ->body('Đã bắt đầu vận chuyển phiếu: ' . $record->id)
                                    ->success()
                                    ->duration(1000)
                                    ->send();
                            }
                        )
                        ->color('success')
                        ->icon('heroicon-o-check'),
                    Action::make('hoanthanhvc')->label('Hoàn thành vận chuyển')
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieuvanchuyen_phieu::van::chuyen'))
                        ->visible(fn($record): bool => $record->TrangThai == 1)
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
                                    ->body('Đã hoàn thành vận chuyển phiếu: ' . $record->id)
                                    ->success()
                                    ->duration(1000)
                                    ->send();
                            }
                        )
                        ->color('yellow')
                        ->icon('heroicon-o-check-badge'),
                    Action::make('huyphieuxuat')->label('Huỷ phiếu vận chuyển')
                        ->authorize(fn(): bool => Auth::user()->can('duyetphieuvanchuyen_phieu::van::chuyen'))
                        ->visible(fn($record): bool => $record->TrangThai == 0)
                        ->action(
                            function (phieuvanchuyen $record) {
                                $record->update([
                                    'TrangThai' => 3,
                                ]);

                                Notification::make()
                                    ->title('Huỷ phiếu')
                                    ->body('Đã huỷ phiếu: ' . $record->id)
                                    ->success()
                                    ->duration(1000)
                                    ->send();
                            }
                        )
                        ->color('danger')
                        ->icon('heroicon-o-x-circle'),

                ]),
            ])
            ->bulkActions([
                ExportBulkAction::make()
                    ->exporter(PhieuvanchuyenExporter::class)
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
            'index' => ListPhieuVanChuyens::route('/'),
            'create' => CreatePhieuVanChuyen::route('/create'),
            'edit' => EditPhieuVanChuyen::route('/{record}/edit'),
        ];
    }
}
