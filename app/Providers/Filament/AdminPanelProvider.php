<?php

declare(strict_types=1);

namespace App\Providers\Filament;

use App\Filament\Auth\CustomLogin;
use App\Filament\Auth\CustomProfile;
use App\Filament\Resources\CustomRoleResource;
use App\Filament\Widgets\BangWidget;
use App\Filament\Widgets\BieuDoWidget;
use App\Filament\Widgets\CanhBao;
use App\Filament\Widgets\ThongSoWidget;
use BezhanSalleh\FilamentShield\FilamentShieldPlugin;
use Exception;
use Filament\Enums\ThemeMode;
use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\AuthenticateSession;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Navigation\NavigationItem;
use Filament\Pages;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Yebor974\Filament\RenewPassword\RenewPasswordPlugin;

class AdminPanelProvider extends PanelProvider
{
    /**
     * @throws Exception
     */
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
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
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([
                Pages\Dashboard::class,
            ])
            //->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets')
            ->widgets([
                Widgets\AccountWidget::class,
                Widgets\FilamentInfoWidget::class,
                // CanhBao::class,
                ThongSoWidget::class,
                BangWidget::class,
                BieuDoWidget::class,
            ])
            ->navigationItems([
                NavigationItem::make('Chức vụ')
                    ->icon('heroicon-o-shield-check')
                    ->group('Quản lý tài khoản')
                    ->isActiveWhen(fn() => request()->routeIs('filament.admin.resources.shield.roles.index'))
                    ->url(fn(): string => CustomRoleResource::getUrl('index')),
            ])
            ->navigationGroups([
                'Quản lý danh mục',
                'Quản lý Nhập & Xuất',
                'Quản lý vận chuyển',
                'Quản lý tài khoản',
            ])
            ->sidebarCollapsibleOnDesktop()
            ->sidebarWidth('16rem')
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
                    ->forceRenewPassword()
                    ->timestampColumn()
                    ->passwordExpiresIn(days: 90),
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
