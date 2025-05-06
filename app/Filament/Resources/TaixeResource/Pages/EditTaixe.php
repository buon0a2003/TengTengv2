<?php

declare(strict_types=1);

namespace App\Filament\Resources\TaixeResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\TaixeResource;
use Filament\Actions;
use Filament\Notifications\Notification;

class EditTaixe extends EditAndRedirectToIndex
{
    protected static string $resource = TaixeResource::class;

    protected static ?string $title = 'Sửa tài xế';

    protected static ?string $breadcrumb = 'Sửa';

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()
                ->action(
                    function ($record): void {
                        $record->delete();
                        Notification::make()
                            ->success()
                            ->title('Xoá thành công')
                            ->body('Tài xế đã xoá thành công!')
                            ->send();
                        redirect()->to(route('filament.admin.resources.taixe.index'));
                    }
                ),
        ];
    }

    protected function getSavedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sửa thành công')
            ->body('Đã sửa thông tin tài xế.');
    }
}
