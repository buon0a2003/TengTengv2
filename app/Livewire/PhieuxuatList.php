<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\phieuxuat;
use Filament\Tables\Table;
use Filament\Tables\Actions\Action;
use Filament\Forms\Contracts\HasForms;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Contracts\HasTable;
use Filament\Notifications\Notification;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Tables\Concerns\InteractsWithTable;
use Guava\FilamentModalRelationManagers\Actions\Table\RelationManagerAction;
use App\Filament\Resources\PhieuXuatResource\RelationManagers\ChitietphieuxuatRelationManager;

class PhieuxuatList extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    public function table(Table $table): Table
    {
        return $table
            ->query(phieuxuat::query())
            ->defaultSort('TrangThai', 'asc')
            ->columns([
                TextColumn::make('id')->label('Mã phiếu'),
                TextColumn::make('khachhang.TenKH')->label('Khách hàng')
                    ->placeholder('N/A'),
                TextColumn::make('NgayXuat')->label('Ngày xuất')
                    ->date('d/m/Y')
                    ->searchable(),

                TextColumn::make('user.name')->label('Người nhập')
                    ->searchable(),
                TextColumn::make('kho.TenKho')->label('Kho'),
                TextColumn::make('LyDo')->label('Lý do')
                    ->formatStateUsing(fn($record) => $record->LyDo == 0 ? 'Xuất sản xuất' : 'Xuất bán')
                    ->badge()
                    ->color(fn($record): string => $record->LyDo == 0 ? 'info' : 'success')
                    ->searchable(),
                TextColumn::make('TrangThai')->label('Trạng thái')
                    ->alignCenter()
                    ->formatStateUsing(fn($record) => match ($record->TrangThai) {
                        0 => 'Đang xử lý',
                        1 => 'Đã xử lý',
                        2 => 'Đã huỷ',
                        default => 'N/A'
                    })
                    ->badge()
                    ->color(fn($record): string => match ($record->TrangThai) {
                        0 => 'warning',
                        1 => 'success',
                        2 => 'danger',
                        default => ''
                    }),

                TextColumn::make('GhiChu')->label('Ghi chú')
                    ->wrap(),

            ])
            ->filters([
                SelectFilter::make('TrangThai')->label('Trạng thái')
                    ->options([
                        '0' => 'Đang xử lý',
                        '1' => 'Đã xử lý',
                        '2' => 'Đã huỷ',
                    ])->default('1'),
            ])
            ->actions([
                Action::make('phieuxuatSelected')
                    ->label('Chọn')
                    ->color('primary')
                    ->action(
                        function (phieuxuat $record) {
                            $this->dispatch('phieuxuatSelected', [
                                'phieuxuat_id' => $record->id,
                            ]);

                            Notification::make()
                                ->title('Chọn phiếu xuất')
                                ->body('Đã chọn phiếu xuất: ' . $record->id)
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
        return view('livewire.phieuxuat-list');
    }
}
