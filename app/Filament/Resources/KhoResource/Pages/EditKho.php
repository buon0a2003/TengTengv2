<?php

declare(strict_types=1);

namespace App\Filament\Resources\KhoResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\KhoResource;
use Filament\Actions;
use Filament\Notifications\Notification;

class EditKho extends EditAndRedirectToIndex
{
    protected static string $resource = KhoResource::class;

    protected static ?string $title = 'Sửa thông tin kho';

    protected static ?string $breadcrumb = 'Sửa';
    protected function getHeaderActions(): array
    {
        return [
            //            Actions\DeleteAction::make(),
        ];
    }
    protected function getSavedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sửa thành công')
            ->body('Đã sửa thông tin kho.');
    }
}
