<?php

declare(strict_types=1);

namespace App\Filament\Resources\NhanVienResource\Pages;

use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use App\Filament\Exports\NhanvienExporter;
use App\Filament\Resources\NhanVienResource;

class ListNhanViens extends ListRecords
{
    protected static string $resource = NhanVienResource::class;

    protected static ?string $title = 'Danh sách nhân viên';

    protected static ?string $breadcrumb = 'Danh sách nhân viên';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->icon('heroicon-o-plus')
                ->label('Tạo mới'),

            Actions\ExportAction::make()
                ->exporter(NhanvienExporter::class)
                ->label('Xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('primary'),
        ];
    }
}
