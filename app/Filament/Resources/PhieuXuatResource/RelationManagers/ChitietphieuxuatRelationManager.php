<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuXuatResource\RelationManagers;

use App\Filament\Resources\VattuResource;
use App\Livewire\TonkhoList;
use App\Models\kho;
use App\Models\vattu;
use App\Models\vitri;
use Filament\Forms;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class ChitietphieuxuatRelationManager extends RelationManager
{
    use InteractsWithForms;

    protected static string $relationship = 'chitietphieuxuat';

    protected static ?string $modelLabel = 'Chi tiết phiếu xuất';

    protected static ?string $title = 'Danh sách vật tư';

    //    protected $listeners = ['tonkhoSelected' => 'handleTonkhoSelected'];
    //    public function handleTonkhoSelected($record): void
    //    {
    //        $state = $this->form->getRawState();
    //
    //        $state['dsvattuxuatedit'][] = [
    //            'vattu_id' => $record['vattu_id'],
    //            'tonkho_id' => $record['tonkho_id'],
    //            'TenVT' => $record['TenVT'],
    //            'soluongkhadung' => $record['soluongkhadung'],
    //            'kho_id' => $record['kho_id'],
    //            'soluong' => 0,
    //            'vitri_id' => $record['vitri_id'],
    //        ];
    //
    //        $this->form->fill($state);
    //
    //    } //buggggg
    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Livewire::make(TonkhoList::class)->columnSpanFull(),
                Repeater::make('dsvattuxuatedit')
                    ->required()
                    ->validationMessages([
                        'required' => 'Danh sách vật tư xuất không được trống.',
                    ])
                    ->reorderable(false)
                    ->addable(false)
                    //                    ->addActionLabel('Thêm vật tư')
                    //                    ->addAction(function (Forms\Components\Actions\Action $action): Forms\Components\Actions\Action {
                    //                        return $action->modalContent(
                    //                            view('filament.tonkholist')
                    //                        )
                    //                            ->action(null)
                    //                            ->modalWidth('7xl')
                    //                            ->modalCancelAction(false)
                    //                            ->modalSubmitActionLabel('Done');
                    //                    })
                    ->label('Danh sách vật tư xuất')
                    ->schema([
                        TextInput::make('vattu_id')->hidden()->live(),
                        TextInput::make('kho_id')->hidden()->live(),
                        TextInput::make('vitri_id')->hidden()->live(),
                        TextInput::make('tonkho_id')->hidden(),
                        TextInput::make('TenVT')
                            ->readOnly(true)
                            ->label('Vật tư')
                            ->required(),
                        TextInput::make('soluongkhadung')->label('Số lượng khả dụng')
                            ->readOnly(true)
                            ->suffix(fn(Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                            ->numeric(),
                        TextInput::make('soluong')->label('Số lượng')
                            ->required()
                            ->suffix(fn(Get $get): string => (string) vattu::find($get('vattu_id'))?->donvitinh->TenDVT ?? '')
                            ->numeric()
                            ->minValue(0)
                            ->maxValue(fn(Get $get): int => (int) $get('soluongkhadung')),
                        Textarea::make('ghichu')->rows(2)->label('Ghi chú'),
                    ])
                    ->defaultItems(0)
                    ->grid(3)
                    ->itemLabel(function ($state, $get): string {
                        $kho = kho::find($state['kho_id']);
                        $vitri = vitri::find($state['vitri_id']);

                        return "{$kho->TenKho} - {$vitri->Mota}" ?? 'Lỗi';
                    }),
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
                TextColumn::make('vattu.TenVT')
                    ->label('Tên vật tư')
                    ->url(fn($record) => VattuResource::getUrl('edit', ['record' => $record->vattu_id])),
                TextColumn::make('SoLuong')->label('Số lượng xuất'),
                TextColumn::make('vattu_id')
                    ->label('Đơn vị tính')
                    ->formatStateUsing(fn($record): string => (string) vattu::find($record->vattu_id)->donvitinh->TenDVT ?? 'N/A'),
                TextColumn::make('GhiChu')->label('Ghi chú'),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                //                Tables\Actions\CreateAction::make()
                //                    ->hidden($this->shouldbeHidden())
                //                    ->modalWidth('7xl')
                //                    ->label('Thêm')->icon('heroicon-o-plus'),
            ])
            ->actions([
                //                Tables\Actions\EditAction::make()
                //                    ->hidden($this->shouldbeHidden())
                //                    ->modalHeading('Chi tiết phiếu nhập'),
                Tables\Actions\DeleteAction::make()
                    ->hidden($this->shouldbeHidden()),

            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public function shouldbeHidden(): bool
    {
        return $this->getOwnerRecord()->TrangThai === 1 || $this->getOwnerRecord()->TrangThai === 2;
    }
}
