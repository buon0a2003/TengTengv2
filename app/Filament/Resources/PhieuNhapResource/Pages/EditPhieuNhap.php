<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use App\Filament\Resources\PhieuNhapResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPhieuNhap extends EditRecord
{
    protected static string $resource = PhieuNhapResource::class;

    protected static ?string $title = "Sửa phiếu nhập";

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
