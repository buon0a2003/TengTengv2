<?php

namespace App\Filament\Pages;

use Filament\Widgets\AccountWidget;
use App\Filament\Widgets\BangWidget;
use App\Filament\Widgets\BieuDoWidget;
use App\Filament\Widgets\ThongSoWidget;
use Filament\Widgets\FilamentInfoWidget;

class Dashboard extends \Filament\Pages\Dashboard
{
    protected static ?string $navigationLabel = 'Trang chủ';

    protected static ?string $title = 'Trang chủ';

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
