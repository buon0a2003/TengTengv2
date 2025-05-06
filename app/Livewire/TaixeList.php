<?php

declare(strict_types=1);

namespace App\Livewire;

use App\Models\taixe;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Notifications\Notification;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Livewire\Component;

class TaixeList extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    public function table(Table $table): Table
    {
        return $table
            ->query(taixe::query())
            ->emptyStateHeading('Không có tài xế')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('TenTaiXe')
                    ->label('Tên tài xế')
                    ->searchable(),
                TextColumn::make('Sdt')
                    ->label('Số điện thoại')
                    ->searchable(),
                TextColumn::make('CCCD')
                    ->label('Số căn cước')
                    ->searchable(),
                TextColumn::make('BangLai')
                    ->label('Bằng lái')
                    ->searchable(),
                TextColumn::make('DiaChi')
                    ->label('Địa chỉ')
                    ->searchable(),
                TextColumn::make('NamSinh')
                    ->label('Năm sinh')
                    ->date('d/m/Y')
                    ->searchable(),
                TextColumn::make('GhiChu')
                    ->label('Ghi chú')
                    ->searchable(),
                TextColumn::make('TrangThai')
                    ->label('Trạng thái')
                    ->alignCenter()
                    ->formatStateUsing(fn ($record) => match ($record->TrangThai) {
                        0 => 'Đang giao',
                        1 => 'Có sẵn',
                        2 => 'Nghỉ',
                        default => 'N/A'
                    })
                    ->badge()
                    ->color(fn ($record): string => match ($record->TrangThai) {
                        0 => 'success',
                        1 => 'info',
                        2 => 'danger',
                        default => ''
                    }),
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
                // EditAction::make(),
                Action::make('taixeSelected')
                    ->label('Chọn')
                    ->color('primary')
                    ->action(
                        function (taixe $record) {
                            $this->dispatch('taixeSelected', [
                                'taixe_id' => $record->id,
                                'tentaixe' => $record->TenTaiXe,
                            ]);

                            Notification::make()
                                ->title('Chọn tài xế')
                                ->body('Đã chọn tài xế '.$record->TenTaiXe)
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
        return view('livewire.taixe-list');
    }
}
