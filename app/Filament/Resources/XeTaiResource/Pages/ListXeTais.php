<?php

declare(strict_types=1);

namespace App\Filament\Resources\XeTaiResource\Pages;

use App\Filament\Exports\XetaiExporter;
use App\Filament\Resources\XeTaiResource;
use Filament\Actions;
use Filament\Actions\Exports\Enums\ExportFormat;
use Filament\Resources\Pages\ListRecords;

class ListXeTais extends ListRecords
{
    protected static string $resource = XeTaiResource::class;

    protected static ?string $title = 'Danh sách xe tải';

    protected static ?string $breadcrumb = 'Danh sách xe tải';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Tạo mới')
                ->icon('heroicon-o-plus'),

            Actions\ExportAction::make()
                ->label('Xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('success')
                ->exporter(XetaiExporter::class)
                ->formats([
                    ExportFormat::Csv,
                    ExportFormat::Xlsx,
                ]),
        ];
    }
}
