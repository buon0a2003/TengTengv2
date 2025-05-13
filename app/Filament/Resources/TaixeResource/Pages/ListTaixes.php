<?php

declare(strict_types=1);

namespace App\Filament\Resources\TaixeResource\Pages;

use App\Filament\Exports\TaixeExporter;
use App\Filament\Resources\TaixeResource;
use Filament\Actions;
use Filament\Actions\Exports\Enums\ExportFormat;
use Filament\Resources\Pages\ListRecords;

class ListTaixes extends ListRecords
{
    protected static string $resource = TaixeResource::class;

    protected static ?string $title = 'Danh sách tài xế';

    protected static ?string $breadcrumb = 'Danh sách tài xế';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->icon('heroicon-o-plus')
                ->label('Tạo mới'),

            Actions\ExportAction::make()
                ->label('Xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('success')
                ->exporter(TaixeExporter::class)
                ->formats([
                    ExportFormat::Csv,
                    ExportFormat::Xlsx,
                ]),
        ];
    }
}
