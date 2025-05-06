<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\PhieuNhapResource;
use App\Models\chitietphieunhap;
use Filament\Actions;
use Illuminate\Database\Eloquent\Model;
use Livewire\Attributes\On;

class CreatePhieuNhap extends CreateAndRedirectToIndex
{
    protected static string $resource = PhieuNhapResource::class;

    protected static ?string $title = 'Tạo mới';

    protected static ?string $breadcrumb = 'Tạo mới';

    // protected $listeners = ['vattuSelected' => 'handleVattuSelected'];

    #[On('vattuSelected')]
    public function handleVattuSelected($record): void
    {
        $state = $this->form->getRawState();

        $state['dsvattu'][] = [
            'id' => $record['id'],
            'TenVT' => $record['TenVT'],
        ];

        $this->form->fill($state);
    }

    protected function handleRecordCreation(array $data): Model
    {

        $record = static::getModel()::create($data);

        foreach ($data['dsvattu'] as $key) {
            $chitietphieunhap = new chitietphieunhap();

            $chitietphieunhap->vattu_id = $key['id'];
            $chitietphieunhap->SoLuong = $key['soluong'];
            $chitietphieunhap->GhiChu = $key['ghichu'];

            $chitietphieunhap->phieunhap_id = $record->id;

            $chitietphieunhap->save();
        }

        return $record;
    }

    protected function getCreateFormAction(): Actions\Action
    {
        return parent::getCreateFormAction()
            ->label('Tạo mới')
            ->icon('heroicon-s-plus');
    }
}
