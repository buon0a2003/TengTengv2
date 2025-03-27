<?php

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use App\Filament\Resources\PhieuNhapResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPhieuNhap extends EditRecord
{
    protected static string $resource = PhieuNhapResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
