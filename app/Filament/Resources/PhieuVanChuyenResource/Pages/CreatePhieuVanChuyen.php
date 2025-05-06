<?php

namespace App\Filament\Resources\PhieuVanChuyenResource\Pages;

use Filament\Actions;
use Livewire\Attributes\On;
use Filament\Notifications\Notification;
use App\Filament\CreateAndRedirectToIndex;
use Filament\Resources\Pages\CreateRecord;
use App\Filament\Resources\PhieuVanChuyenResource;

class CreatePhieuVanChuyen extends CreateAndRedirectToIndex
{
    protected static string $resource = PhieuVanChuyenResource::class;

    protected static ?string $title = 'Tạo mới';

    protected static ?string $breadcrumb = 'Tạo mới';

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo mới phiếu vận chuyển')
            ->body('Đã tạo thành công.');
    }

    #[On('xetaiSelected')]
    public function xetaiSelectedhandle($record): void
    {
        // dd($record);
        $state = $this->form->getRawState();

        $state['xetai_id'] = $record['xetai_id'];
        $state['Bienso'] = $record['BienSo'];

        $this->form->fill($state);
    }

    #[On('taixeSelected')]
    public function taixeSelectedhandle($record): void
    {
        // dd($record);
        $state = $this->form->getRawState();

        $state['taixe_id'] = $record['taixe_id'];
        $state['tentaixe'] = $record['tentaixe'];

        $this->form->fill($state);
    }

    #[On('phieuxuatSelected')]
    public function phieuxuatSelectedhandle($record): void
    {
        // dd($record);
        $state = $this->form->getRawState();

        $state['phieuxuat_id'] = $record['phieuxuat_id'];

        $this->form->fill($state);
    }
}
