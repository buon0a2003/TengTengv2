<?php

namespace App\Filament\Pages;

use BezhanSalleh\FilamentShield\Traits\HasPageShield;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Pages\Page;

class HanghuyPage extends Page
{

    use HasPageShield;
    use InteractsWithForms;
    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static string $view = 'filament.pages.hanghuy-page';

    protected static ?string $modelLabel = 'Thống kê';

    protected static ?string $navigationLabel = 'Thống kê hàng hủy';

    protected static ?string $navigationGroup = 'Báo cáo thống kê';

    protected static ?string $slug = 'thongke-hanghuy';

    protected static ?string $title = 'Thống kê hàng hủy';
}
