<?php

declare(strict_types=1);

namespace App\Filament\Resources\NhaCungCapResource\Pages;

use App\Filament\Resources\NhaCungCapResource;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;

class CreateNhaCungCap extends CreateRecord
{
    protected static string $resource = NhaCungCapResource::class;

    protected static ?string $title = 'Tạo mới';

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo mới nhà cung cấp')
            ->body('Đã tạo thành công.');
    }


    protected function getCreateFormAction(): \Filament\Actions\Action
    {
        return parent::getCreateFormAction()
            ->label('Tạo mới')
            ->icon('heroicon-s-plus');
    }
}
