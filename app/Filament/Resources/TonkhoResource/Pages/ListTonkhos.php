<?php

namespace App\Filament\Resources\TonkhoResource\Pages;

use App\Filament\Resources\TonkhoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTonkhos extends ListRecords
{
    protected static string $resource = TonkhoResource::class;

    protected static ?string $title = 'Danh sách tồn kho';


    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
//            Actions\ExportAction::make(),
        ];
    }
}
