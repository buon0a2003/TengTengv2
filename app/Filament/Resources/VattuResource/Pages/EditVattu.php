<?php

namespace App\Filament\Resources\VattuResource\Pages;

use App\Filament\Resources\VattuResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditVattu extends EditRecord
{
    protected static string $resource = VattuResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
