<?php

namespace App\Filament\Resources\ChiTietPhieuNhapResource\Pages;

use App\Filament\Resources\ChiTietPhieuNhapResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditChiTietPhieuNhap extends EditRecord
{
    protected static string $resource = ChiTietPhieuNhapResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
