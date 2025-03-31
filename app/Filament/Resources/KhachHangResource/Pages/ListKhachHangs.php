<?php

namespace App\Filament\Resources\KhachHangResource\Pages;

use App\Filament\Resources\KhachHangResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListKhachHangs extends ListRecords
{
    protected static string $resource = KhachHangResource::class;

    protected static ?string $title = 'Danh sách khách hàng';
    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->icon('heroicon-o-plus')
                ->label('Tạo mới'),

            Actions\ExportAction::make()
                ->exporter(\App\Filament\Exports\KhachhangExporter::class)
                ->label('xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('primary')
        ];
    }
}
