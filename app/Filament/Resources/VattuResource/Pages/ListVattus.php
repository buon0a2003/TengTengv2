<?php

declare(strict_types=1);

namespace App\Filament\Resources\VattuResource\Pages;

use App\Filament\Resources\VattuResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListVattus extends ListRecords
{
    protected static string $resource = VattuResource::class;

    protected static ?string $title = 'Danh sách vật tư';
    protected static ?string $breadcrumb = 'Danh sách vật tư';

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
                ->exporter(\App\Filament\Exports\VattuExporter::class)
                ->label('xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('primary'),
        ];
    }
}
