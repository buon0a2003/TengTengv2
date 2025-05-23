<?php

declare(strict_types=1);

namespace App\Filament\Widgets;

use App\Models\User;
use App\Models\chitietphieunhap;
use App\Models\chitietphieuxuat;
use EightyNine\FilamentAdvancedWidget\AdvancedStatsOverviewWidget\Stat;
use EightyNine\FilamentAdvancedWidget\AdvancedStatsOverviewWidget as BaseWidget;

class ThongSoWidget extends BaseWidget
{
    protected static ?string $pollingInterval = null;

    //    protected int | string | array $columnSpan = 1;
    protected function getStats(): array
    {
        return [
            Stat::make('Số nhân viên', (string) User::where('Active', '!=', 0)->count())
                ->icon('heroicon-o-user')
                ->description('Tổng số nhân viên đang hoạt động')
                ->iconBackgroundColor('info')
                ->iconPosition('start')
                ->descriptionIcon('heroicon-o-chevron-up', 'before')
                ->descriptionColor('info')
                ->iconColor('info'),

            Stat::make(
                'Tổng nhập',
                (string) chitietphieunhap::join('phieunhap', 'chitietphieunhap.phieunhap_id', '=', 'phieunhap.id')
                    ->whereMonth('phieunhap.NgayNhap', now()->month)
                    ->whereYear('phieunhap.NgayNhap', now()->year)
                    ->where('phieunhap.TrangThai', 1)
                    ->sum('chitietphieunhap.SoLuong')
            )->icon('heroicon-o-chevron-double-left')
                ->descriptionIcon('heroicon-o-chevron-up', 'before')
                ->descriptionColor('success')
                // ->progress(89)
                ->chartColor('success')
                // ->progressBarColor('success')
                ->chart([12, 14, 13, 15, 12])
                ->description('Tổng phiếu nhập tháng ' . now()->format('m'))
                ->iconColor('success'),

            Stat::make(
                'Tổng xuất',
                (string) chitietphieuxuat::join('phieuxuat', 'chitietphieuxuat.phieuxuat_id', '=', 'phieuxuat.id')
                    ->whereMonth('phieuxuat.NgayXuat', now()->month)
                    ->whereYear('phieuxuat.NgayXuat', now()->year)
                    ->where('phieuxuat.TrangThai', 1)
                    ->sum('chitietphieuxuat.SoLuong')
            )->icon('heroicon-o-chevron-double-right')
                ->description('Tổng phiếu xuất tháng ' . now()->format('m'))
                ->descriptionIcon('heroicon-o-chevron-down', 'before')
                ->descriptionColor('danger')
                ->iconColor('danger')
                ->progress(69)
                ->chartColor('danger'),
        ];
    }
}
