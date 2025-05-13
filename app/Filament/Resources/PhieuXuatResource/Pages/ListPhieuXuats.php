<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\Exports\PhieuxuatExporter;
use App\Filament\Resources\PhieuXuatResource;
use Filament\Actions;
use Filament\Actions\Exports\Enums\ExportFormat;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;

class ListPhieuXuats extends ListRecords
{
    protected static string $resource = PhieuXuatResource::class;

    protected static ?string $title = 'Quản lý phiếu xuất';

    protected static ?string $breadcrumb = 'Quản lý phiếu xuất';

    public function getTabs(): array
    {

        $tabs = ['all' => Tab::make('All')
            ->badge($this->getModel()::count())];

        $tabs['nhaptp'] = Tab::make('Xuất sản xuất')
            ->modifyQueryUsing(function ($query) {
                return $query->where('LyDo', 0);
            })
            ->badgeColor('info')
            ->badge($this->getModel()::where('LyDo', 0)->count());

        $tabs['nhapnvl'] = Tab::make('Xuất bán')
            ->modifyQueryUsing(function ($query) {
                return $query->where('LyDo', 1);
            })
            ->badgeColor('success')
            ->badge($this->getModel()::where('LyDo', 1)->count());

        return $tabs;
    }

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
                ->exporter(PhieuxuatExporter::class)
                ->formats([
                    ExportFormat::Csv,
                    ExportFormat::Xlsx,
                ]),
        ];
    }
}
