<?php

namespace App\Filament\Resources\KhoResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\KhoResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateKho extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';
    protected static string $resource = KhoResource::class;
}
