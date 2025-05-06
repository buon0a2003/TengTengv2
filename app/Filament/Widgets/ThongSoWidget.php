<?php

declare(strict_types=1);

namespace App\Filament\Widgets;

use App\Models\User;
use EightyNine\FilamentAdvancedWidget\AdvancedStatsOverviewWidget as BaseWidget;
use EightyNine\FilamentAdvancedWidget\AdvancedStatsOverviewWidget\Stat;

class ThongSoWidget extends BaseWidget
{
    protected static ?string $pollingInterval = null;

    //    protected int | string | array $columnSpan = 1;
    protected function getStats(): array
    {
        return [
            Stat::make('Số nhân viên', (string) User::where('Active', '!=', 0)->count())
                ->icon('heroicon-o-user')
                ->description('Tổng số nhân viên đang hoạt động')
                ->iconBackgroundColor('info')
                ->iconPosition('start')
                ->descriptionIcon('heroicon-o-chevron-up', 'before')
                ->descriptionColor('info')
                ->iconColor('info'),
            Stat::make('Tổng nhập', '14.2k')->icon('heroicon-o-chevron-double-left')
                ->descriptionIcon('heroicon-o-chevron-up', 'before')
                ->descriptionColor('success')
                // ->progress(89)
                ->chartColor('success')
                // ->progressBarColor('success')
                ->chart([12, 24, 11, 22, 11])
                ->description('Tổng phiếu nhập tháng này')
                ->iconColor('success'),
            Stat::make('Tổng xuất', '23.4k')->icon('heroicon-o-chevron-double-right')
                ->description('Tổng phiếu xuất tháng này')
                ->descriptionIcon('heroicon-o-chevron-down', 'before')
                ->descriptionColor('danger')
                ->iconColor('danger')
                ->progress(69)
                ->chartColor('danger'),
        ];
    }
}
