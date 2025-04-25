<?php

declare(strict_types=1);

namespace App\Filament\Resources\TonkhoResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\TonkhoResource;
use Filament\Notifications\Notification;

class CreateTonkho extends CreateAndRedirectToIndex
{
    protected static string $resource = TonkhoResource::class;

    protected static ?string $title = 'Tạo mới';
    protected static ?string $breadcrumb = 'Tạo mới';

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo thành công')
            ->body('Đã thêm hàng tồn kho.');
    }
}
