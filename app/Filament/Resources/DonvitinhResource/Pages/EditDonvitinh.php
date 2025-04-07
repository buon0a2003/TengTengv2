<?php

namespace App\Filament\Resources\DonvitinhResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\DonvitinhResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;

class EditDonvitinh extends EditAndRedirectToIndex
{
    protected static string $resource = DonvitinhResource::class;
    protected static ?string $title = 'Sửa đơn vị tính';

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()
                ->action(
                    function ($record): void {
                        if ($record->vattu()->count() > 0)
                        {
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
}
