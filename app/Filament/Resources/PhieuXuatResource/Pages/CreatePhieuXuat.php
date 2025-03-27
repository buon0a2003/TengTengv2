<?php

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\Resources\PhieuXuatResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\Facades\Log;
use Filament\Notifications\Notification;

class CreatePhieuXuat extends CreateRecord
{

//    protected static bool $canCreateAnother = true;

    protected static string $resource = PhieuXuatResource::class;

    public function create(bool $another = false): void
    {
        $formData = $this->form->getState(); // Lấy dữ liệu từ form

        Notification::make()
            ->title('Thông tin đã nhập')
            ->body('Dữ liệu: ' . json_encode($formData, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE))
            ->send();
    }
}
