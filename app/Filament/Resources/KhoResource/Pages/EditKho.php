<?php

namespace App\Filament\Resources\KhoResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\KhoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditKho extends EditAndRedirectToIndex
{
    protected static string $resource = KhoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
