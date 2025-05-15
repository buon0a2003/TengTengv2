<?php

namespace App\Filament\Pages;

use Filament\Widgets\AccountWidget;
use App\Filament\Widgets\BangWidget;
use App\Filament\Widgets\BieuDoWidget;
use App\Filament\Widgets\ThongSoWidget;
use Filament\Widgets\FilamentInfoWidget;
use Filament\Widgets\Widget;
use Filament\Widgets\WidgetConfiguration;

class Dashboard extends \Filament\Pages\Dashboard
{
    protected static ?string $navigationLabel = 'Trang chủ';

    protected static ?string $title = 'Trang chủ';

    protected static ?string $navigationIcon = 'heroicon-o-home';

    protected static ?string $activeNavigationIcon = 'heroicon-s-home';

    /**
     * @return array<class-string<Widget> | WidgetConfiguration>
     */
    public function getWidgets(): array
    {
        return [
            AccountWidget::class,
            FilamentInfoWidget::class,
            ThongSoWidget::class,
            BangWidget::class,
        ];
    }
}
