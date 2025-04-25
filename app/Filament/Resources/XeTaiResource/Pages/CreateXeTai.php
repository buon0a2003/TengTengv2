<?php

namespace App\Filament\Resources\XeTaiResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\XeTaiResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;

class CreateXeTai extends CreateAndRedirectToIndex
{
    protected static string $resource = XeTaiResource::class;

    protected static ?string $title = 'Tạo mới';
    protected static ?string $breadcrumb = 'Tạo mới';

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $data['TrangThai'] = 1;
        return $data;
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo mới thành công')
            ->body('Đã tạo mới xe tải.');
    }

}
