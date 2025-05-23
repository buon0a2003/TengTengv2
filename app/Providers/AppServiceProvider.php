<?php

declare(strict_types=1);

namespace App\Providers;

use Filament\Pages\Page;
use Filament\Tables\Table;
use Filament\Support\Assets\Js;
use Filament\Support\Assets\Css;
use Illuminate\Support\HtmlString;
use Filament\Support\Enums\Alignment;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\ServiceProvider;
use Filament\Support\Facades\FilamentView;
use Filament\Support\Facades\FilamentAsset;
use Filament\Notifications\Livewire\DatabaseNotifications;

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
            Css::make('naly-stylesheet', realpath(__DIR__ . '/../../resources/css/custom.css')),
            Js::make('scrollUpFix', realpath(__DIR__ . '/../../resources/js/scrollUpFix.js')),
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
