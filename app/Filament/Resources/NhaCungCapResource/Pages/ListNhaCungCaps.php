<?php

declare(strict_types=1);

namespace App\Filament\Resources\NhaCungCapResource\Pages;

use App\Filament\Exports\NhacungcapExporter;
use App\Filament\Resources\NhaCungCapResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListNhaCungCaps extends ListRecords
{
    protected static string $resource = NhaCungCapResource::class;

    protected static ?string $title = 'Danh sách nhà cung cấp';

    protected static ?string $breadcrumb = 'Danh sách nhà cung cấp';
    //  Ẩn breadcumbs
    //    public function getBreadcrumbs(): array
    //    {
    //        return [];
    //    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->icon('heroicon-o-plus')
                ->label('Tạo mới'),

            Actions\ExportAction::make()
                ->exporter(NhacungcapExporter::class)
                ->label('Xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('primary'),
        ];
    }
}
