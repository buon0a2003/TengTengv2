<?php

declare(strict_types=1);

namespace App\Providers;

use Filament\Pages\Page;
use Filament\Support\Assets\Css;
use Filament\Support\Assets\Js;
use Filament\Support\Enums\Alignment;
use Filament\Support\Facades\FilamentAsset;
use Filament\Tables\Table;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        FilamentAsset::register([
            Css::make('naly-stylesheet', realpath(__DIR__.'/../../resources/css/custom.css')),
            Js::make('scrollUpFix', realpath(__DIR__.'/../../resources/js/scrollUpFix.js')),
        ]);

        Page::formActionsAlignment(Alignment::Left);

        Table::configureUsing(function (Table $table): void {
            $table
                ->poll('5s')
                ->striped()
                ->emptyStateHeading('Không có dữ liệu');
        });
    }
}
