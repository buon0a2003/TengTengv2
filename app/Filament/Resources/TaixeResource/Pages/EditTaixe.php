<?php

declare(strict_types=1);

namespace App\Filament\Resources\TaixeResource\Pages;

use App\Filament\Resources\TaixeResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTaixe extends EditRecord
{
    protected static string $resource = TaixeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
