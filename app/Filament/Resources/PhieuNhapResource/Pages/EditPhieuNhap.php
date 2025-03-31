<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use App\Filament\Resources\PhieuNhapResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use App\Filament\EditAndRedirectToIndex;

class EditPhieuNhap extends EditAndRedirectToIndex
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
