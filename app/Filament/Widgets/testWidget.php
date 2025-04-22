<?php

declare(strict_types=1);

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class testWidget extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Total Users', 100)
                ->label('Tổng số người dùng')
                ->icon('heroicon-o-users')
                ->color('success'),

            Stat::make('Total Posts', 100)
                ->label('Tổng số bài viết')
                ->icon('heroicon-o-document-text')
                ->color('primary'),

            Stat::make('Total Comments', 100)
                ->label('Tổng số bình luận')
                ->color('warning'),
        ];
    }
}
