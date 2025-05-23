<?php

declare(strict_types=1);

namespace App\Livewire;

use App\Models\kho;
use Livewire\Component;
use Filament\Tables\Table;
use Filament\Tables\Actions\Action;
use Filament\Forms\Contracts\HasForms;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Contracts\HasTable;
use Filament\Notifications\Notification;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Tables\Concerns\InteractsWithTable;

class KhoList extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    public $LyDonhap = '';
    public $LyDoxuat = '';

    public function table(Table $table): Table
    {
        return $table
            ->query(kho::query())
            ->emptyStateHeading('Không có kho')
            ->emptyStateDescription('Vui lòng thêm dữ liệu hoặc thay đổi bộ lọc tìm kiếm.')
            ->columns([
                TextColumn::make('id')->label('Mã kho')->hidden(),
                TextColumn::make('TenKho')->label('Tên kho')
                    ->alignCenter()
                    ->badge()
                    ->color('primary')
                    ->searchable(),
                TextColumn::make('DiaChi')->label('Địa chỉ')
                    ->searchable(),
                TextColumn::make('GhiChu')->label('Ghi chú')
                    ->searchable(),
                TextColumn::make('tonkho_count')->label('Số lượng tồn kho')
                    ->counts('tonkho')
                    ->alignCenter(),
                TextColumn::make('vitri_count')->label('Số vị trí')
                    ->counts('vitri')
                    ->alignCenter(),
            ])
            ->filters([
                SelectFilter::make('GhiChu')
                    ->options([
                        'Nguyên vật liệu' => 'Nguyên vật liệu',
                        'Thành phẩm' => 'Thành phẩm',
                    ])
                    ->label('Loại kho')
                    ->default(
                        function () {
                            if ($this->LyDonhap != '') {
                                return match ($this->LyDonhap) {
                                    '0' => 'Thành phẩm',
                                    '1' => 'Nguyên vật liệu',
                                    '2' => 'Thành phẩm',
                                    default => 'Nguyên vật liệu'
                                };
                            }
                            if ($this->LyDoxuat != '') {
                                return match ($this->LyDoxuat) {
                                    '0' => 'Nguyên vật liệu',
                                    '1' => 'Thành phẩm',
                                    default => ''
                                };
                            }
                            return 'Nguyên vật liệu';
                        }
                    )
            ])
            ->actions([
                Action::make('khoSelected')
                    ->label('Chọn')
                    ->color('primary')
                    ->action(
                        function (kho $record) {
                            $this->dispatch('khoSelected', [
                                'kho_id' => $record->id,
                                'TenKho' => $record->TenKho,
                                'DiaChi' => $record->DiaChi,
                                'GhiChu' => $record->GhiChu,
                            ]);

                            Notification::make()
                                ->title('Chọn kho')
                                ->body('Đã chọn kho: ' . $record->TenKho)
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
        return view('livewire.kho-list');
    }
}
