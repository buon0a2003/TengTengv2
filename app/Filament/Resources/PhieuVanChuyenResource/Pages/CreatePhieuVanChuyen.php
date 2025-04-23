<?php

namespace App\Filament\Resources\PhieuVanChuyenResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\PhieuVanChuyenResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;

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
}
