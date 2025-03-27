<?php

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use App\Filament\Resources\PhieuNhapResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPhieuNhaps extends ListRecords
{
    protected static string $resource = PhieuNhapResource::class;

    protected static ?string $title = 'Quản lý phiếu nhập';
    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->icon('heroicon-o-plus')
                ->label('Tạo mới'),

            Actions\CreateAction::make()
                ->label('xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('primary')
        ];
    }

}
