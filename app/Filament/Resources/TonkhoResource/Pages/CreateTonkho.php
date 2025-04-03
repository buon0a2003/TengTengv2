<?php

namespace App\Filament\Resources\TonkhoResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\TonkhoResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateTonkho extends CreateAndRedirectToIndex
{
    protected static string $resource = TonkhoResource::class;
    protected static ?string $title = 'Tạo mới';


}
