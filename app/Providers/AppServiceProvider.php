<?php

declare(strict_types=1);

namespace App\Providers;

use Filament\Pages\Page;
use Filament\Tables\Table;
use Illuminate\Support\Js;
use Filament\Support\Assets\Css;
use Filament\Support\Enums\Alignment;
use Illuminate\Support\ServiceProvider;
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
            Css::make('naly-stylesheet', realpath(__DIR__ . '/../../app/Providers/custom.css')),
        ]);

        Page::formActionsAlignment(Alignment::Left);

        Table::configureUsing(function (Table $table): void {
            $table
                ->striped()
                ->emptyStateHeading('Không có dữ liệu');
        });

        // DatabaseNotifications::pollingInterval('5s');
    }
}
