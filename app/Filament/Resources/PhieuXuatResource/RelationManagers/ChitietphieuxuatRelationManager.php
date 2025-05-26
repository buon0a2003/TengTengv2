<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuXuatResource\RelationManagers;

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
use App\Models\chitietphieuxuat;
use Filament\Forms\Components\Hidden;
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

class ChitietphieuxuatRelationManager extends RelationManager
{
    use InteractsWithForms;

    protected static string $relationship = 'chitietphieuxuat';

    protected static ?string $modelLabel = 'Chi tiết phiếu xuất';

    protected static ?string $title = 'Danh sách vật tư';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Thông tin vật tư')
                    ->schema([
                        Hidden::make('tonkho_id'),
                        Select::make('vattu_id')
                            ->label('Vật tư')
                            ->disabled()
                            ->relationship('vattu', 'TenVT')
                            ->required(),
                        TextInput::make('soluongkhadung')->label('Số lượng khả dụng')
                            ->readOnly(true)
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
                            ->suffix(fn(Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                            ->numeric()
                            ->minValue(0)
                            ->lte('soluongkhadung'),
                        Textarea::make('ghichu')->rows(2)->label('Ghi chú'),
                    ])
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('phieuxuat_id')
            ->heading('Chi tiết phiếu xuất')
            ->emptyStateHeading('Chưa có vật tư')
            ->emptyStateDescription('Thêm mới vật tư để hoàn thành phiếu xuất')
            ->columns([
                // TextColumn::make('vattu_id')->hidden(true),
                TextColumn::make('index')->label('Stt')->width(10)
                    ->rowIndex(),
                TextColumn::make('vattu.TenVT')
                    ->label('Tên vật tư')
                    ->url(fn($record) => VattuResource::getUrl('edit', ['record' => $record->vattu_id])),
                TextColumn::make('SoLuong')->label('Số lượng xuất'),
                TextColumn::make('vattu_id')
                    ->label('Đơn vị tính')
                    ->formatStateUsing(fn($record): string => (string) vattu::find($record->vattu_id)->donvitinh->TenDVT ?? 'N/A'),
                TextColumn::make('tonkho.kho.TenKho')->label('Kho'),
                TextColumn::make('tonkho.vitri.Mota')->label('Vị trí'),
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
                            'LyDo' => $this->getOwnerRecord()->LyDo,
                            'kho_id' => $this->getOwnerRecord()->kho_id,
                        ]
                    ))
                    ->modalWidth('7xl')
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->hidden($this->shouldbeHidden())
                    ->modalHeading('Chi tiết phiếu nhập'),
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
        // dd($record);
        $phieuxuat = $this->getOwnerRecord();

        $existingItem = chitietphieuxuat::where('phieuxuat_id', $phieuxuat->id)
            ->where('tonkho_id', $record['tonkho_id'])
            ->first();

        if ($existingItem) {
            Notification::make()
                ->title('Thông báo')
                ->body('Vật tư đã tồn tại trong danh sách xuất.')
                ->warning()
                ->send();

            return;
        }
        chitietphieuxuat::create([
            'phieuxuat_id' => $phieuxuat->id,
            'vattu_id' => $record['vattu_id'],
            'tonkho_id' => $record['tonkho_id'],
            'SoLuong' => 0,
            'vitri_id' => $record['vitri_id'],
        ]);

        Notification::make()
            ->title('Thành công')
            ->body('Vật tư đã được thêm vào phiếu xuất')
            ->success()
            ->send();
    }
}
