<?php

declare(strict_types=1);

namespace App\Filament\Resources\TonkhoResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\TonkhoResource;
use Filament\Actions;
use Filament\Notifications\Notification;

class EditTonkho extends EditAndRedirectToIndex
{
    protected static string $resource = TonkhoResource::class;

    protected static ?string $title = 'Sửa thông tin tồn kho';

    protected static ?string $breadcrumb = 'Sửa';

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function getSavedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sửa thành công')
            ->body('Đã sửa thông tin hàng tồn kho.');
    }
}
