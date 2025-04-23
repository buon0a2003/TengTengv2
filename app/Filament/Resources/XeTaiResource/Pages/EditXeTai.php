<?php

namespace App\Filament\Resources\XeTaiResource\Pages;

use App\Filament\Resources\XeTaiResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditXeTai extends EditRecord
{
    protected static string $resource = XeTaiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
