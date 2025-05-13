<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuVanChuyenResource\Pages;

use App\Filament\Exports\PhieuvanchuyenExporter;
use App\Filament\Resources\PhieuVanChuyenResource;
use Filament\Actions;
use Filament\Actions\Exports\Enums\ExportFormat;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;

class ListPhieuVanChuyens extends ListRecords
{
    protected static string $resource = PhieuVanChuyenResource::class;

    protected static ?string $title = 'Danh sách phiếu vận chuyển';

    protected static ?string $breadcrumb = 'Danh sách phiếu vận chuyển';

    public function getTabs(): array
    {

        $badge_num = $this->getModel()::query()
            ->selectRaw('TrangThai, count(*) as count')
            ->groupBy('TrangThai')
            ->pluck('count', 'TrangThai')
            ->toArray();

        $tabs = ['all' => Tab::make('All')
            ->badge($this->getModel()::count())];

        $tabs['cvc'] = Tab::make('Chưa vận chuyển')
            ->modifyQueryUsing(function ($query) {
                return $query->where('TrangThai', 0);
            })
            ->badgeColor('warning')
            ->badge($badge_num[0] ?? 0);

        $tabs['dvc'] = Tab::make('Đang vận chuyển')
            ->modifyQueryUsing(function ($query) {
                return $query->where('TrangThai', 1);
            })
            ->badgeColor('info')
            ->badge($badge_num[1] ?? 0);

        $tabs['ht'] = Tab::make('Hoàn thành')
            ->modifyQueryUsing(function ($query) {
                return $query->where('TrangThai', 2);
            })
            ->badgeColor('success')
            ->badge($badge_num[2] ?? 0);

        $tabs['dh'] = Tab::make('Đã huỷ')
            ->modifyQueryUsing(function ($query) {
                return $query->where('TrangThai', 3);
            })
            ->badgeColor('danger')
            ->badge($badge_num[3] ?? 0);

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
                ->exporter(PhieuvanchuyenExporter::class)
                ->formats([
                    ExportFormat::Csv,
                    ExportFormat::Xlsx,
                ]),
        ];
    }
}
