<?php

declare(strict_types=1);

namespace App\Filament\Resources\TaixeResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\TaixeResource;
use App\Models\taixe;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;

class CreateTaixe extends CreateAndRedirectToIndex
{
    protected static string $resource = TaixeResource::class;

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
            ->title('Tạo thành công')
            ->body('Đã tạo mới tài xế.');
    }
}
