<?php

namespace App\Filament;

use Filament\Resources\Pages\CreateRecord;

class CreateAndRedirectToIndex extends CreateRecord
{
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

?>