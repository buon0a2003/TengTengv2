<?php

namespace App\Filament\Resources\PhieuVanChuyenResource\Pages;

use App\Filament\Resources\PhieuVanChuyenResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPhieuVanChuyen extends EditRecord
{
    protected static string $resource = PhieuVanChuyenResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
