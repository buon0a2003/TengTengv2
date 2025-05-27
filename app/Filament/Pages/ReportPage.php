<?php

declare(strict_types=1);

namespace App\Filament\Pages;

use App\Filament\Widgets\BangWidget;
use App\Filament\Widgets\BieuDoWidget;
use App\Filament\Widgets\ThongKeNhapXuatNamChart;
use App\Filament\Widgets\ThongSoWidget;
use BezhanSalleh\FilamentShield\Traits\HasPageShield;
use Filament\Pages\Page;

class ReportPage extends Page
{
    use HasPageShield;

    protected static ?string $navigationIcon = 'heroicon-o-chart-bar';

    protected static ?string $activeNavigationIcon = 'heroicon-s-chart-bar';

    protected static string $view = 'filament.pages.report-page';

    protected static ?string $modelLabel = 'Trang thống kê';

    protected static ?string $navigationLabel = 'Trang thống kê';

    protected static ?string $navigationGroup = 'Báo cáo thống kê';

    protected static ?string $slug = 'trangthongke';

    protected static ?string $title = 'Trang thống kê';

    protected function getHeaderWidgets(): array
    {
        return [
            // ThongSoWidget::make([
            //     'status' => 'active',
            // ]),
            // BangWidget::class,
            BieuDoWidget::class,
            ThongKeNhapXuatNamChart::class,
        ];
    }
}
