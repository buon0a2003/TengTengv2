<?php

namespace App\Filament\Resources\PhieuVanChuyenResource\Pages;

use App\Filament\Resources\PhieuVanChuyenResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPhieuVanChuyens extends ListRecords
{
    protected static string $resource = PhieuVanChuyenResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
