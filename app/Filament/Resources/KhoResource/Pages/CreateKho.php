<?php

declare(strict_types=1);

namespace App\Filament\Resources\KhoResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\KhoResource;

class CreateKho extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';

    protected static string $resource = KhoResource::class;
}
