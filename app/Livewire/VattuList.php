<?php

declare(strict_types=1);

namespace App\Livewire;

use App\Models\vattu;
use Exception;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Notifications\Notification;
use Filament\Tables;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Contracts\View\View;
use Livewire\Component;

class VattuList extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    public string $LyDo;

    /**
     * @throws Exception
     */
    public function table(Table $table): Table
    {
        return $table
            ->query(vattu::query())
            ->columns([
                TextColumn::make('MaVT')->label('Mã vật tư')->searchable(),
                TextColumn::make('TenVT')->label('Tên vật tư')->searchable(),
                TextColumn::make('donvitinh.TenDVT')->label('Đơn vị tính')->alignCenter(),
                TextColumn::make('KichThuoc')->label('Kích thước')->searchable(),
                TextColumn::make('MauSac')->label('Màu sắc')->searchable(),
                TextColumn::make('DacDiem')->label('Đặc điểm')->searchable(),
                IconColumn::make('LaTP')->label('Là thành phẩm')->boolean()->alignCenter(),
            ])

            ->filters([
                SelectFilter::make('LaTP')
                    ->label('Loại vật tư')
                    ->options([
                        '0' => 'Thành phẩm',
                        '1' => 'Nguyên vật liệu',
                    ])
                    ->default(function () {
                        if ($this->LyDo === '') {
                            return '';
                        }

                        return $this->LyDo;
                    }),
            ])
            ->actions([
                Tables\Actions\Action::make('vattuSelect')
                    ->label('Chọn')
                    ->color('primary')
                    ->action(
                        function (vattu $record) {
                            $this->dispatch('vattuSelected', [
                                'id' => $record->id,
                                'TenVT' => $record->TenVT,
                            ]);

                            Notification::make()
                                ->title('Thành công')
                                ->body('Vật tư đã được thêm vào')
                                ->success()
                                ->duration(500)
                                ->send();
                        }
                    ),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    //
                ]),
            ]);
    }

    public function render(): View
    {
        return view('livewire.vattu-list');
    }
}
