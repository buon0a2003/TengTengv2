<?php

declare(strict_types=1);

namespace App\Livewire;

use App\Models\tonkho;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Tables;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Tables\Table;
use Illuminate\Contracts\View\View;
use Livewire\Component;

class TonkhoList extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    public string $LyDo;

    public ?string $kho_id;

    public function table(Table $table): Table
    {
        return $table
            ->query(tonkho::query())
            ->columns([
                Tables\Columns\TextColumn::make('kho.TenKho')
                    ->label('Tên kho')
                    ->searchable(),

                Tables\Columns\TextColumn::make('vattu.TenVT')
                    ->label('Tên vật tư')
                    ->width('120px')
                    ->searchable(),

                Tables\Columns\TextColumn::make('vattu.DacDiem')
                    ->label('Đặc điểm')
                    ->searchable(),

                Tables\Columns\TextColumn::make('vattu.KichThuoc')
                    ->label('Kích thước'),

                Tables\Columns\TextColumn::make('vattu.MauSac')
                    ->label('Màu sắc'),

                Tables\Columns\TextColumn::make('SoLuong')
                    ->label('Số lượng khả dụng')
                    ->weight('bold')
                    ->alignCenter()
                    ->numeric()
                    ->sortable(),

                Tables\Columns\TextColumn::make('vattu.donvitinh_id')
                    ->formatStateUsing(
                        fn($record) => $record->vattu->donvitinh->TenDVT ?? 'Chưa có'
                    )
                    ->label('Đơn vị tính')
                    ->alignCenter()
                    ->searchable(),

                Tables\Columns\IconColumn::make('vattu.LaTP')
                    ->label('Là thành phẩm')
                    ->boolean()
                    ->alignCenter(),

                Tables\Columns\TextColumn::make('vitri.Mota')
                    ->label('Vị trí')
                    ->searchable(),

                Tables\Columns\TextColumn::make('NgayCapNhat')
                    ->dateTime('d-m-Y')
                    ->sortable(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('kho_id')
                    ->relationship('kho', 'TenKho')
                    ->preload()
                    ->searchable()
                    ->default(function () {
                        if ($this->kho_id) {
                            return $this->kho_id;
                        } else return '';
                    })
                    ->label('Chọn kho'),
                Tables\Filters\SelectFilter::make('LaTP')
                    ->relationship('vattu', 'LaTP')
                    ->preload()
                    ->getOptionLabelFromRecordUsing(fn($record) => $record->LaTP ? 'Thành phẩm' : 'Nguyên vật liệu')
                    ->label('Loại vật tư')
                    ->default(fn() => $this->LyDo === '0' ? 1 : 2),
            ], layout: FiltersLayout::AboveContent)
            ->actions([
                Tables\Actions\Action::make('tonkhoSelect')
                    ->label('Chọn')
                    ->color('primary')
                    ->action(
                        function (tonkho $record) {
                            $this->dispatch('tonkhoSelected', [
                                'tonkho_id' => $record->id,
                                'vattu_id' => $record->vattu_id,
                                'TenVT' => $record->vattu->TenVT,
                                'kho_id' => $record->kho_id,
                                'vitri_id' => $record->vitri_id,
                                'soluongkhadung' => $record->SoLuong,
                            ]);
                        }
                    ),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public function render(): View
    {
        return view('livewire.tonkho-list');
    }
}
