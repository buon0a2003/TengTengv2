<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuDieuChuyenResource\Pages;

use App\Filament\Exports\PhieuDieuChuyenExporter;
use App\Filament\Resources\PhieuDieuChuyenResource;
use Filament\Actions;
use Filament\Actions\ExportAction;
use Filament\Resources\Pages\ListRecords;

class ListPhieuDieuChuyens extends ListRecords
{
    protected static string $resource = PhieuDieuChuyenResource::class;

    protected static ?string $title = 'Danh sách phiếu điều chuyển';

    protected static ?string $breadcrumb = 'Danh sách';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Thêm mới')
                ->icon('heroicon-s-plus'),

            ExportAction::make()
                ->label('Xuất dữ liệu')
                ->icon('heroicon-s-arrow-down-tray')
                ->color('success')
                ->exporter(PhieuDieuChuyenExporter::class),
        ];
    }
}
