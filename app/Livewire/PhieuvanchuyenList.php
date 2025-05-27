<?php

declare(strict_types=1);

namespace App\Livewire;

use App\Models\phieuvanchuyen;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Notifications\Notification;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Livewire\Component;

class PhieuvanchuyenList extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    public function table(Table $table): Table
    {
        return $table
            ->query(phieuvanchuyen::query())
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
                    ->searchable(),
                TextColumn::make('XeTai.BienSo')
                    ->alignCenter()
                    ->badge()
                    ->color('gray')
                    ->label('Xe vận chuyển'),
                TextColumn::make('taixe.TenTaiXe')
                    ->label('Tên tài xế')
                    ->searchable(),
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
                SelectFilter::make('TrangThai')
                    ->label('Trạng thái')
                    ->options([
                        '0' => 'Chưa vận chuyển',
                        '1' => 'Đang vận chuyển',
                        '2' => 'Đã hoàn thành',
                        '3' => 'Đã hủy',
                    ]),
            ])
            ->actions([
                Action::make('phieuvanchuyenSelected')
                    ->label('Chọn')
                    ->color('primary')
                    ->action(
                        function (phieuvanchuyen $record) {
                            $this->dispatch('phieuvanchuyenSelected', [
                                'phieuvanchuyen_id' => $record->id,
                            ]);

                            Notification::make()
                                ->title('Chọn phiếu vận chuyển')
                                ->body('Đã chọn phiếu vận chuyển: '.$record->id)
                                ->success()
                                ->duration(1000)
                                ->send();
                        }
                    ),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    // Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public function render()
    {
        return view('livewire.phieuvanchuyen-list');
    }
}
