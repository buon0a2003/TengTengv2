<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuDieuChuyenResource\RelationManagers;

use App\Models\kho;
use Filament\Forms;
use Filament\Tables;
use App\Models\vattu;
use App\Models\vitri;
use App\Models\tonkho;
use Filament\Forms\Get;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Livewire\Attributes\On;
use App\Livewire\TonkhoList;
use App\Models\chitietphieudieuchuyen;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Notifications\Notification;
use App\Filament\Resources\VattuResource;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Resources\RelationManagers\RelationManager;

class ChitietphieudieuchuyenRelationManager extends RelationManager
{
    use InteractsWithForms;

    protected static string $relationship = 'chitietphieudieuchuyen';

    protected static ?string $modelLabel = 'Chi tiết phiếu điều chuyển';

    protected static ?string $title = 'Danh sách vật tư';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin vật tư')
                    ->columns(2)
                    ->schema([
                        TextInput::make('tonkho_id')->hidden(),
                        Select::make('vattu_id')
                            ->label('Vật tư')
                            ->columnSpanFull()
                            ->disabled()
                            ->relationship('vattu', 'TenVT')
                            ->required(),
                        TextInput::make('soluongkhadung')->label('Số lượng khả dụng')
                            ->readOnly(true)
                            ->columnSpan(1)
                            ->formatStateUsing(function ($record) {
                                if ($record->tonkho_id) {
                                    $tonkho = tonkho::find($record->tonkho_id);
                                    return $tonkho ? $tonkho->SoLuong : 0;
                                }
                                return 0;
                            })
                            ->suffix(fn(Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                            ->numeric(),
                        TextInput::make('SoLuong')->label('Số lượng')
                            ->required()
                            ->columnSpan(1)
                            ->suffix(fn(Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                            ->numeric()
                            ->minValue(0)
                            ->lte('soluongkhadung'),
                        Select::make('vitri_dich_id')
                            ->label('Vị trí đích')
                            ->columnSpanFull()
                            ->options(function ($record) {
                                $phieuDieuChuyen = $record->phieudieuchuyen;
                                return vitri::where('kho_id', $phieuDieuChuyen->MaKhoDich)
                                    ->pluck('Mota', 'id')
                                    ->toArray();
                            })
                            ->required()
                            ->searchable(),
                        Textarea::make('GhiChu')->rows(2)->label('Ghi chú')->columnSpanFull(),
                    ])
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('phieudieuchuyen_id')
            ->heading('Chi tiết phiếu điều chuyển')
            ->emptyStateHeading('Chưa có vật tư')
            ->emptyStateDescription('Thêm mới vật tư để hoàn thành phiếu điều chuyển')
            ->columns([
                TextColumn::make('index')->label('Stt')->width(10)
                    ->rowIndex(),
                TextColumn::make('vattu.TenVT')
                    ->label('Tên vật tư')
                    ->url(fn($record) => VattuResource::getUrl('edit', ['record' => $record->vattu_id])),
                TextColumn::make('SoLuong')->label('Số lượng chuyển'),
                TextColumn::make('vattu_id')
                    ->label('Đơn vị tính')
                    ->formatStateUsing(fn($record): string => (string) vattu::find($record->vattu_id)->donvitinh->TenDVT ?? 'N/A'),
                TextColumn::make('tonkho.kho.TenKho')->label('Kho nguồn'),
                TextColumn::make('tonkho.vitri.Mota')->label('Vị trí nguồn'),
                TextColumn::make('vitridich.Mota')->label('Vị trí đích'),
                TextColumn::make('GhiChu')->label('Ghi chú'),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\Action::make('tonkholist')->label('Danh sách tồn kho')
                    ->hidden($this->shouldbeHidden())
                    ->icon('heroicon-o-list-bullet')
                    ->color('warning')
                    ->modalHeading('Danh sách tồn kho')
                    ->modalContent(fn() => view(
                        'filament.tonkholist',
                        [
                            'LyDo' => '',
                            'kho_id' => $this->getOwnerRecord()->MaKhoNguon,
                        ]
                    ))
                    ->modalWidth('7xl')
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->hidden($this->shouldbeHidden())
                    ->modalHeading('Chi tiết phiếu điều chuyển'),
                Tables\Actions\DeleteAction::make()
                    ->hidden($this->shouldbeHidden()),

            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    //Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public function shouldbeHidden(): bool
    {
        return $this->getOwnerRecord()->TrangThai == 1 || $this->getOwnerRecord()->TrangThai == 2;
    }

    #[On('tonkhoSelected')]
    public function handleTonkhoSelected($record): void
    {
        $phieudieuchuyen = $this->getOwnerRecord();

        $existingItem = chitietphieudieuchuyen::where('phieudieuchuyen_id', $phieudieuchuyen->id)
            ->where('tonkho_id', $record['tonkho_id'])
            ->first();

        if ($existingItem) {
            Notification::make()
                ->title('Thông báo')
                ->body('Vật tư đã tồn tại trong danh sách điều chuyển.')
                ->warning()
                ->send();

            return;
        }

        chitietphieudieuchuyen::create([
            'phieudieuchuyen_id' => $phieudieuchuyen->id,
            'vattu_id' => $record['vattu_id'],
            'tonkho_id' => $record['tonkho_id'],
            'SoLuong' => 0,
        ]);

        Notification::make()
            ->title('Thành công')
            ->body('Vật tư đã được thêm vào phiếu điều chuyển')
            ->success()
            ->send();
    }
}
