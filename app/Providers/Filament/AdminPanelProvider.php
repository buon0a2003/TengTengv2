<?php

declare(strict_types=1);

namespace App\Providers\Filament;

use App\Filament\Widgets\ThongKeNhapXuatNamChart;
use App\Filament\Widgets\TiLeSuCoChart;
use Exception;
use Filament\Pages;
use Filament\Panel;
use App\Models\User;
use Filament\Widgets;
use Filament\PanelProvider;
use Filament\Enums\ThemeMode;
use App\Filament\Pages\Dashboard;
use App\Filament\Widgets\CanhBao;
use App\Filament\Auth\CustomLogin;
use Filament\Support\Colors\Color;
use App\Filament\Auth\CustomProfile;
use App\Filament\Widgets\BangWidget;
use Illuminate\Support\Facades\Auth;
use App\Filament\Widgets\BieuDoWidget;
use App\Filament\Widgets\ThongSoWidget;
use Filament\Navigation\NavigationItem;
use Filament\Http\Middleware\Authenticate;
use App\Filament\Resources\CustomRoleResource;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Filament\Http\Middleware\AuthenticateSession;
use BezhanSalleh\FilamentShield\FilamentShieldPlugin;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Yebor974\Filament\RenewPassword\RenewPasswordPlugin;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;

class AdminPanelProvider extends PanelProvider
{
    /**
     * @throws Exception
     */
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->spa()
            ->databaseTransactions()
            ->id('admin')
            ->darkMode(false)
            ->defaultThemeMode(ThemeMode::Light)
            ->path('')
            ->login(CustomLogin::class)
            ->databaseNotifications()
            ->profile(CustomProfile::class)
            ->colors([
                'amber' => Color::Amber,
                'blue' => Color::Blue,
                'cyan' => Color::Cyan,
                'emerald' => Color::Emerald,
                'fuchsia' => Color::Fuchsia,
                'gray' => Color::Gray,
                'green' => Color::Green,
                'indigo' => Color::Indigo,
                'lime' => Color::Lime,
                'orange' => Color::Orange,
                'pink' => Color::Pink,
                'yellow' => Color::Yellow,
                'purple' => Color::Purple,
                'red' => Color::Red,
                'rose' => Color::Rose,
                'sky' => Color::Sky,
                'slate' => Color::Slate,
                'teal' => Color::Teal,
                'violet' => Color::Violet,
            ])
            ->theme(asset('css/filament/admin/theme.css'))
            ->brandLogo(fn() => view('filament.logo'))
            ->favicon(fn() => asset('images/fav/favicon-120.png'))
            ->authGuard('web')
            // ->authPasswordBroker('users')
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([
                // Pages\Dashboard::class,
            ])
            // ->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets')
            ->widgets([
                Widgets\AccountWidget::class,
                //Widgets\FilamentInfoWidget::class,
                // CanhBao::class,
                ThongSoWidget::class,
                BangWidget::class,
                BieuDoWidget::class,
                TiLeSuCoChart::class,
                ThongKeNhapXuatNamChart::class,
            ])
            ->navigationItems([
                NavigationItem::make('Chức vụ')
                    ->icon('heroicon-o-shield-check')
                    ->activeIcon('heroicon-s-shield-check')
                    ->group('Quản lý tài khoản')
                    ->isActiveWhen(fn() => request()->routeIs('filament.admin.resources.shield.roles.index'))
                    ->url(fn(): string => CustomRoleResource::getUrl('index'))
                    ->visible(fn() => Auth::user()->can('view_any_custom::role') || Auth::user()->hasRole('super_admin')),
            ])
            ->navigationGroups([
                'Quản lý danh mục',
                'Quản lý Nhập & Xuất',
                'Quản lý vận chuyển',
                'Quản lý tài khoản',
            ])
            ->sidebarCollapsibleOnDesktop()
            ->sidebarWidth('17rem')
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
                \Hasnayeen\Themes\Http\Middleware\SetTheme::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ])
            ->plugins([
                (new RenewPasswordPlugin())
                    ->passwordExpiresIn(days: 90)
                    ->forceRenewPassword()
                    ->timestampColumn(),
                \Hasnayeen\Themes\ThemesPlugin::make(),
                FilamentShieldPlugin::make()
                    ->gridColumns([
                        'default' => 1,
                        'sm' => 2,
                        'lg' => 3,
                    ])
                    ->sectionColumnSpan(1)
                    ->checkboxListColumns([
                        'default' => 1,
                        'sm' => 2,
                        'lg' => 4,
                    ])
                    ->resourceCheckboxListColumns([
                        'default' => 1,
                        'sm' => 2,
                    ]),
            ]);
    }
}
