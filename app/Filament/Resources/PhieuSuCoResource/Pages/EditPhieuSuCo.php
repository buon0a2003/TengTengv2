<?php

namespace App\Filament\Resources\PhieuSuCoResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\PhieuSuCoResource;
use App\Models\phieuvanchuyen;
use App\Models\phieuxuat;
use Filament\Actions;
use Filament\Notifications\Notification;
use Livewire\Attributes\On;

class EditPhieuSuCo extends EditAndRedirectToIndex
{
    protected static string $resource = PhieuSuCoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()->label('Xóa'),
        ];
    }

    public function getTitle(): string
    {
        return 'Chỉnh sửa phiếu sự cố';
    }

    #[On('phieuvanchuyenSelected')]
    public function onPhieuvanchuyenSelected($data): void
    {
        $this->data['phieuvanchuyen_id'] = $data['phieuvanchuyen_id'];

        $phieuvanchuyen = phieuvanchuyen::find($data['phieuvanchuyen_id']);

        if ($phieuvanchuyen && !empty($phieuvanchuyen->phieuxuat_id) && empty($this->data['phieuxuat_id'])) {
            $this->data['phieuxuat_id'] = $phieuvanchuyen->phieuxuat_id;
        }

        Notification::make()
            ->title('Đã chọn phiếu vận chuyển')
            ->success()
            ->duration(1500)
            ->send();
    }

    #[On('phieuxuatSelected')]
    public function onPhieuxuatSelected($data): void
    {
        $this->data['phieuxuat_id'] = $data['phieuxuat_id'];

        Notification::make()
            ->title('Đã chọn phiếu xuất')
            ->success()
            ->duration(1500)
            ->send();
    }
}
