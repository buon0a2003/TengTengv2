<?php

namespace App\Livewire;

use App\Filament\Resources\PhieuNhapResource;
use App\Models\vattu;
use Exception;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Forms\Get;
use Filament\Tables;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Table;
use Livewire\Component;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Filters\SelectFilter;
use Livewire\Attributes\On;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\MarkdownEditor;
use Filament\Forms\Form;
use Filament\Notifications\Notification;

class VattuList extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    /**
     * @throws Exception
     */
    public function table(Table $table): Table
    {
        return $table
            ->query(vattu::query())
            ->columns([
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
                    '1' => 'Thành phẩm',
                    '0' => 'Nguyên vật liệu',
                ])
            ])
            ->actions([
                Tables\Actions\Action::make('vattuSelect')
                    ->label('Select')
                    ->color('primary')
                    ->action(function (vattu $record) {
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
                    )
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
