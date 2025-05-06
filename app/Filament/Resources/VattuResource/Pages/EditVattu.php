<?php

declare(strict_types=1);

namespace App\Filament\Resources\VattuResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\VattuResource;
use Filament\Actions;
use Filament\Notifications\Notification;

class EditVattu extends EditAndRedirectToIndex
{
    protected static string $resource = VattuResource::class;

    protected static ?string $title = 'Sủa thông tin vật tư';

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
            ->body('Đã sửa thông tin vật tư.');
    }
}
