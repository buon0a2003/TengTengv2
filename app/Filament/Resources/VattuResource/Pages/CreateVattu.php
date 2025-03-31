<?php

namespace App\Filament\Resources\VattuResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\VattuResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateVattu extends CreateAndRedirectToIndex
{
    protected static string $resource = VattuResource::class;
}
