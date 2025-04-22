<?php

declare(strict_types=1);

namespace App\Filament\Resources\DonvitinhResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\DonvitinhResource;

class CreateDonvitinh extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';

    protected static string $resource = DonvitinhResource::class;
}
