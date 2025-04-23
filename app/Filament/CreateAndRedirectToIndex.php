<?php

declare(strict_types=1);

namespace App\Filament;

use Filament\Resources\Pages\CreateRecord;

class CreateAndRedirectToIndex extends CreateRecord
{
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreateFormAction(): \Filament\Actions\Action
    {
        return parent::getCreateFormAction()
            ->label('Tạo mới')
            ->icon('heroicon-s-plus');
    }
    protected function getCreateAnotherFormAction(): \Filament\Actions\Action
    {
        return parent::getCreateAnotherFormAction()
            ->label('Tạo tiếp');
    }


    protected function getCancelFormAction(): \Filament\Actions\Action
    {
        return parent::getCancelFormAction()
            ->label('Hủy');
    }
}
