<?php

namespace App\Filament\Resources\PhieuVanChuyenResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\PhieuVanChuyenResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPhieuVanChuyen extends EditandRedirectToIndex
{
    protected static string $resource = PhieuVanChuyenResource::class;
    protected static ?string $title = 'Sửa phiếu vận chuyển';
    protected static ?string $breadcrumb = 'Sửa';
    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
