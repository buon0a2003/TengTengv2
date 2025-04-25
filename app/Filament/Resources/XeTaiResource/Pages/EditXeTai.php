<?php

namespace App\Filament\Resources\XeTaiResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\XeTaiResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;

class EditXeTai extends EditAndRedirectToIndex
{
    protected static string $resource = XeTaiResource::class;

    protected static ?string $title = 'Sửa thông tin xe tải';
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
            ->body('Đã sửa thông tin xe tải.');
    }
}
