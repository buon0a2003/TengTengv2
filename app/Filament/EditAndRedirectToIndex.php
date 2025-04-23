<?php

declare(strict_types=1);

namespace App\Filament;

use Filament\Resources\Pages\EditRecord;

class EditAndRedirectToIndex extends EditRecord
{
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getSaveFormAction(): \Filament\Actions\Action
    {
        return parent::getSaveFormAction()
            ->label('Lưu thay đổi');
    }
    protected function getCancelFormAction(): \Filament\Actions\Action
    {
        return parent::getCancelFormAction()
            ->label('Hủy');
    }
}
