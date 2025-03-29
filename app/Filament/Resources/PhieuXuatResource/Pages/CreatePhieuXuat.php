<?php

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\Resources\PhieuXuatResource;
use App\Models\chitietphieuxuat;
use App\Models\tonkho;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\Facades\Log;
use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Model;

class CreatePhieuXuat extends CreateRecord
{

//    protected static bool $canCreateAnother = true;

    protected static string $resource = PhieuXuatResource::class;

    protected function handleRecordCreation(array $data): Model
    {

        $record = static::getModel()::create($data);

        foreach ($data['chitietphietxuat'] as $key){
            $tonkho = new tonkho();


        }

        return $record;
    }

    public function create(bool $another = false): void
    {
        $formData = $this->form->getState(); // Lấy dữ liệu từ form

        Notification::make()
            ->title('Thông tin đã nhập')
            ->body('Dữ liệu: ' . json_encode($formData, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE))
            ->send();
    }
}
