<?php

namespace App\Filament\Resources\DonvitinhResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\DonvitinhResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateDonvitinh extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';
    protected static string $resource = DonvitinhResource::class;
}
