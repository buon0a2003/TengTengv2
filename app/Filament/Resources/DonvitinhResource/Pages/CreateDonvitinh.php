<?php

declare(strict_types=1);

namespace App\Filament\Resources\DonvitinhResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\DonvitinhResource;
use Filament\Actions;
use Filament\Notifications\Notification;

class CreateDonvitinh extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';
    protected static string $resource = DonvitinhResource::class;
    protected static ?string $breadcrumb = 'Tạo mới';

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo thành công')
            ->body('Đã tạo mới đơn vị tính.');
    }
}
