<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuSuCoResource\Pages;

use App\Filament\Exports\PhieusucoExporter;
use App\Filament\Resources\PhieuSuCoResource;
use Filament\Actions;
use Filament\Actions\Exports\Enums\ExportFormat;
use Filament\Resources\Pages\ListRecords;

class ListPhieuSuCos extends ListRecords
{
    protected static string $resource = PhieuSuCoResource::class;

    public function getTitle(): string
    {
        return 'Danh sách phiếu sự cố';
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tạo phiếu sự cố'),

            Actions\ExportAction::make()
                ->label('Xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('success')
                ->exporter(PhieusucoExporter::class)
                ->formats([
                    ExportFormat::Csv,
                    ExportFormat::Xlsx,
                ]),
        ];
    }
}
