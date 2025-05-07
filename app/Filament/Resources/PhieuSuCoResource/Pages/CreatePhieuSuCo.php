<?php

namespace App\Filament\Resources\PhieuSuCoResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\PhieuSuCoResource;
use App\Models\phieuvanchuyen;
use App\Models\phieuxuat;
use Filament\Notifications\Notification;
use Livewire\Attributes\On;

class CreatePhieuSuCo extends CreateAndRedirectToIndex
{
    protected static string $resource = PhieuSuCoResource::class;

    public function getTitle(): string
    {
        return 'Tạo phiếu sự cố';
    }

    #[On('phieuvanchuyenSelected')]
    public function onPhieuvanchuyenSelected($data): void
    {
        $this->data['phieuvanchuyen_id'] = $data['phieuvanchuyen_id'];

        $phieuvanchuyen = phieuvanchuyen::find($data['phieuvanchuyen_id']);

        if ($phieuvanchuyen && !empty($phieuvanchuyen->phieuxuat_id)) {
            $this->data['phieuxuat_id'] = $phieuvanchuyen->phieuxuat_id;
        }
    }

    // #[On('phieuxuatSelected')]
    // public function onPhieuxuatSelected($data): void
    // {
    //     $this->data['phieuxuat_id'] = $data['phieuxuat_id'];

    //     Notification::make()
    //         ->title('Đã chọn phiếu xuất')
    //         ->success()
    //         ->duration(1500)
    //         ->send();
    // }
}
