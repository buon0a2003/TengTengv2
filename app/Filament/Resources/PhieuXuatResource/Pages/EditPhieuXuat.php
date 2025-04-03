<?php

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\PhieuXuatResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPhieuXuat extends EditAndRedirectToIndex
{
    protected static string $resource = PhieuXuatResource::class;
    protected static ?string $title = 'Sửa phiếu xuất';

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
