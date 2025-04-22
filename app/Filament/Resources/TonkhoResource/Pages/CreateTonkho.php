<?php

declare(strict_types=1);

namespace App\Filament\Resources\TonkhoResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\TonkhoResource;

class CreateTonkho extends CreateAndRedirectToIndex
{
    protected static string $resource = TonkhoResource::class;

    protected static ?string $title = 'Tạo mới';
}
