<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use App\Filament\Exports\PhieunhapExporter;
use App\Filament\Resources\PhieuNhapResource;
use Filament\Actions;
use Filament\Actions\Exports\Enums\ExportFormat;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;

class ListPhieuNhaps extends ListRecords
{
    protected static string $resource = PhieuNhapResource::class;

    protected static ?string $title = 'Quản lý phiếu nhập';

    protected static ?string $breadcrumb = 'Quản lý phiếu nhâp';

    public function getTabs(): array
    {

        $tabs = ['all' => Tab::make('All')
            ->badge($this->getModel()::count())];

        $tabs['nhaptp'] = Tab::make('Nhập thành phẩm')
            ->modifyQueryUsing(function ($query) {
                return $query->where('LyDo', 0);
            })
            ->badgeColor('success')
            ->badge($this->getModel()::where('LyDo', 0)->count());

        $tabs['nhapnvl'] = Tab::make('Nhập nguyên vật liệu')
            ->modifyQueryUsing(function ($query) {
                return $query->where('LyDo', 1);
            })
            ->badgeColor('info')
            ->badge($this->getModel()::where('LyDo', 1)->count());

        $tabs['hanghuy'] = Tab::make('Hàng huỷ')
            ->modifyQueryUsing(function ($query) {
                return $query->where('LyDo', 2);
            })
            ->badgeColor('danger')
            ->badge($this->getModel()::where('LyDo', 2)->count());

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
                ->exporter(PhieunhapExporter::class)
                ->formats([
                    ExportFormat::Csv,
                    ExportFormat::Xlsx,
                ]),
        ];
    }
}
