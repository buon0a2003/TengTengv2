<?php

declare(strict_types=1);

namespace App\Filament\Widgets;

use EightyNine\FilamentAdvancedWidget\AdvancedChartWidget;

class BieuDoWidget extends AdvancedChartWidget
{
    public ?string $filter = 'today';

    protected static ?string $heading = '187.2k';

    protected static string $color = 'info';

    protected static ?string $icon = 'heroicon-o-chart-bar';

    protected static ?string $iconColor = 'info';

    protected static ?string $iconBackgroundColor = 'info';

    protected static ?string $label = 'Tồn hàng tháng';

    protected static ?string $badge = 'đã xác minh';

    protected static ?string $badgeColor = 'success';

    protected static ?string $badgeIcon = 'heroicon-o-check-circle';

    protected static ?string $badgeIconPosition = 'after';

    protected static ?string $badgeSize = 'xs';

    protected int|string|array $columnSpan = 'full';

    protected function getFilters(): ?array
    {
        return [
            'today' => 'Hôm nay',
            'week' => 'Tuần trước',
            'month' => 'Tháng trước',
            'year' => 'Năm nay',
        ];
    }

    protected function getData(): array
    {
        return [
            'datasets' => [
                [
                    'label' => 'Biểu đồ tồn kho',
                    'data' => [0, 10, 5, 2, 21, 32, 45, 74, 65, 45, 77, 89],
                ],
            ],
            'labels' => ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }
}
