<?php

namespace App\Livewire;

use App\Models\xetai;
use Livewire\Component;
use Filament\Tables\Table;
use Filament\Tables\Actions\Action;
use Filament\Forms\Contracts\HasForms;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Notifications\Notification;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Filters\SelectFilter;

class XetaiList extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    public function table(Table $table): Table
    {
        return $table
            ->query(xetai::query())
            ->emptyStateHeading('Không có xe tải')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('id')->label('Mã xe tải')->hidden(),
                TextColumn::make('BienSo')->label('Biển số xe')
                    ->alignCenter()
                    ->badge()
                    ->color('primary')
                    ->searchable(),
                TextColumn::make('TenXe')->label('Loại xe')
                    ->searchable(),
                TextColumn::make('HangXe')->label('Hãng xe')
                    ->searchable(),
                TextColumn::make('TaiTrong')->label('Tải trọng (kg)')
                    ->searchable(),
                TextColumn::make('MauSac')->label('Màu sắc'),
                TextColumn::make('GhiChu')->label('Ghi chú'),
                TextColumn::make('TrangThai')->label('Trạng thái')
                    ->alignCenter()
                    ->formatStateUsing(fn($record) => match ($record->TrangThai) {
                        0 => 'Đang giao',
                        1 => 'Có sẵn',
                        2 => 'Nghỉ',
                        default => 'N/A'
                    })
                    ->badge()
                    ->color(fn($record): string => match ($record->TrangThai) {
                        0 => 'success',
                        1 => 'info',
                        2 => 'danger',
                        default => ''
                    })
            ])
            ->filters([
                SelectFilter::make('TrangThai')
                    ->label('Trạng thái')
                    ->options([
                        0 => 'Đang giao',
                        1 => 'Có sẵn',
                        2 => 'Nghỉ',
                    ])
                    ->default('1')
                    ->placeholder('Tất cả'),
            ])
            ->actions([
                Action::make('xetaiSelected')
                    ->label('Chọn')
                    ->color('primary')
                    ->action(
                        function (xetai $record) {
                            $this->dispatch('xetaiSelected', [
                                'xetai_id' => $record->id,
                                'BienSo' => $record->BienSo,
                            ]);

                            Notification::make()
                                ->title('Chọn xe tải')
                                ->body('Đã chọn xe tải: ' . $record->BienSo)
                                ->success()
                                ->duration(1000)
                                ->send();
                        }
                    ),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    // DeleteBulkAction::make(),
                ]),
            ]);
    }

    public function render()
    {
        return view('livewire.xetai-list');
    }
}
