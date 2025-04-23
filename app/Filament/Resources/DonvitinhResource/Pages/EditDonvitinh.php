<?php

declare(strict_types=1);

namespace App\Filament\Resources\DonvitinhResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\DonvitinhResource;
use Filament\Actions;
use Filament\Notifications\Notification;

class EditDonvitinh extends EditAndRedirectToIndex
{
    protected static string $resource = DonvitinhResource::class;

    protected static ?string $title = 'Sửa đơn vị tính';
    protected static ?string $breadcrumb = 'Sửa';
    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()
                ->action(
                    function ($record): void {
                        if ($record->vattu()->count() > 0) {
                            Notification::make()
                                ->danger()
                                ->title('Xoá không thành công')
                                ->body('Đơn vị tính đang được sử dụng bởi vật tư!')
                                ->send();

                            return;
                        }
                        $record->delete();
                        Notification::make()
                            ->danger()
                            ->title('Xoá  thành công')
                            ->body('Đơn vị tính đã xoá thành công!')
                            ->send();

                        redirect()->to(route('filament.admin.resources.donvitinh.index'));
                    }
                ),
        ];
    }

    protected function getCancelFormAction(): Actions\Action
    {
        return parent::getCancelFormAction()
            ->label('Hủy');
    }

    protected function getSaveFormAction(): Actions\Action
    {
        return parent::getSaveFormAction()
            ->label('Lưu thay đổi');
    }
}
