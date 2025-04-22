<?php

declare(strict_types=1);

namespace App\Filament\Resources\VattuResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\VattuResource;
use Filament\Actions;

class EditVattu extends EditAndRedirectToIndex
{
    protected static string $resource = VattuResource::class;

    protected static ?string $title = 'Sủa thông tin vật tư';

    protected function getHeaderActions(): array
    {
        return [
            //            Actions\DeleteAction::make(),
        ];
    }
}
