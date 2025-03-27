<?php

namespace App\Filament\Resources\ChiTietPhieuNhapResource\Pages;

use App\Filament\Resources\ChiTietPhieuNhapResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListChiTietPhieuNhaps extends ListRecords
{
    protected static string $resource = ChiTietPhieuNhapResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
