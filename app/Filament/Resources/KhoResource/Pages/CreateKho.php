<?php

declare(strict_types=1);

namespace App\Filament\Resources\KhoResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\KhoResource;
use Filament\Notifications\Notification;

class CreateKho extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';

    protected static string $resource = KhoResource::class;

    protected static ?string $breadcrumb = 'Tạo mới';

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo mới kho')
            ->body('Đã tạo thành công.');
    }
}
