<?php

declare(strict_types=1);

namespace App\Providers;

use App\Filament\Resources\UserResource\Pages\EditUser;
use Filament\Actions\ExportAction;
use Filament\Facades\Filament;
use Filament\Navigation\NavigationItem;
use Filament\Pages\Page;
use Filament\Support\Assets\Css;
use Filament\Support\Enums\Alignment;
use Filament\Support\Facades\FilamentAsset;
use Filament\Tables\Table;
use Illuminate\Support\ServiceProvider;
use PhpParser\Node\Scalar\MagicConst\Dir;

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
               ->striped();
        });

        ExportAction::configureUsing(fn (ExportAction $action) => $action->fileDisk('s3'));
    }
}
