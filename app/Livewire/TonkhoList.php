<?php

namespace App\Livewire;

use App\Models\tonkho;
use BladeUI\Icons\Components\Icon;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Tables;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Table;
use Livewire\Component;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Notifications\Notification;

class TonkhoList extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

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

                Tables\Columns\TextColumn::make('vattu.donvitinh_id')
                    ->formatStateUsing(
                        fn ($record) => $record->vattu->donvitinh->TenDVT ?? 'Chưa có'
                    )
                    ->label('Đơn vị tính')
                    ->alignCenter()
                    ->searchable(),

                Tables\Columns\IconColumn::make('vattu.LaTP')
                    ->label('Là thành phẩm')
                    ->boolean()
                    ->alignCenter(),

                Tables\Columns\TextColumn::make('SoLuong')
                    ->label('Số lượng khả dụng')
                    ->weight('bold')
                    ->alignCenter()
                    ->numeric()
                    ->sortable(),

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
                    ->label('Chọn kho'),
            ], layout: FiltersLayout::AboveContent)
            ->actions([
                Tables\Actions\Action::make('tonkhoSelect')
                ->label('Select')
                ->color('primary')
                ->action(function (tonkho $record) {
                    $this->dispatch('tonkhoSelected', [
                            'tonkho_id' => $record->id,
                            'vattu_id' => $record->vattu_id,
                            'TenVT' => $record->vattu->TenVT,
                            'kho_id' => $record->kho_id,
                            'vitri_id' => $record->vitri_id,
                            'soluongkhadung' => $record->SoLuong,
                        ]);
                        Notification::make()
                            ->title('Thành công')
                            ->body('Vật tư đã được thêm vào')
                            ->success()
                            ->duration(500)
                            ->send();
                    }
                )
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                ]),
            ]);
    }

    public function render(): View
    {
        return view('livewire.tonkho-list');
    }
}
