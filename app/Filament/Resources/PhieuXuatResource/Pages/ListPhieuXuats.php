<?php

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\Resources\PhieuXuatResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPhieuXuats extends ListRecords
{
    protected static string $resource = PhieuXuatResource::class;
    protected static ?string $title = 'Quản lý phiếu xuất';
    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
