<?php

declare(strict_types=1);

namespace App\Providers;

use Filament\Pages\Page;
use Filament\Tables\Table;
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
            Css::make('naly-stylesheet', realpath(__DIR__ . '/../../app/Providers/custom.css')),
        ]);

        Page::formActionsAlignment(Alignment::Left);

        Table::configureUsing(function (Table $table): void {
            $table
                ->striped()
                ->header(new HtmlString(""))
                ->deferLoading()
                ->emptyStateHeading('Không có dữ liệu');
        });

        // FilamentView::registerRenderHook(
        //     \Filament\Tables\View\TablesRenderHook::HEADER_BEFORE,
        //     fn(): string => Blade::render('<div
        //             wire:loading.flex
        //             wire:target="tableFilters,applyTableFilters,resetTableFiltersForm,nextPage,gotoPage,previousPage"
        //             class="absolute inset-0 justify-center items-center z-30 hidden bg-transparent backdrop-blur transition-all"
        //             style="
        //                 background-image: linear-gradient(135deg, rgb(255 255 255 / var(--glass-opacity, 30%)), #0000), linear-gradient(var(--glass-reflex-degree, 100deg), rgb(255 255 255 / var(--glass-reflex-opacity, 10%)) 25%, rgb(0 0 0 / 0%) 25%);
        //             "
        //         >
        //             <x-filament::icon icon="heroicon-o-arrow-path" class="h-5 w-5 animate-spin text-primary" />
        //         </div>'),
        // );

        // DatabaseNotifications::pollingInterval('5s');
    }
}
