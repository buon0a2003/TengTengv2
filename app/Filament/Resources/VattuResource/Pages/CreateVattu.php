<?php

declare(strict_types=1);

namespace App\Filament\Resources\VattuResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\VattuResource;
use Filament\Notifications\Notification;

class CreateVattu extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';

    protected static string $resource = VattuResource::class;

    protected static ?string $breadcrumb = 'Tạo mới';

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo mới thành công')
            ->body('Đã tạo mới vật tư.');
    }
}
