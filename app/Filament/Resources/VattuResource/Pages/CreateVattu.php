<?php

declare(strict_types=1);

namespace App\Filament\Resources\VattuResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\VattuResource;

class CreateVattu extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';

    protected static string $resource = VattuResource::class;
}
