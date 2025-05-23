<?php

namespace App\Filament\Widgets;

use Carbon\Carbon;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;

class TiLeSuCoChart extends ChartWidget
{
    public function getHeading(): string
    {
        $month = static::$month ?? now()->month;
        $year = static::$year ?? now()->year;

        return 'Tỷ lệ sự cố trên mỗi chuyến vận chuyển - Tháng ' . $month . '/' . $year;
    }
    protected static ?int $sort = 1;

    public static ?int $year = null;
    public static ?int $month = null;

    protected function getData(): array
    {
        $start = Carbon::createFromDate(static::$year ?? now()->year, static::$month ?? now()->month, 1)->startOfMonth();
        $end = $start->copy()->endOfMonth();

        // Tổng số chuyến vận chuyển trong tháng
        $totalChuyen = DB::table('phieuvanchuyen')
            ->whereBetween('NgayVanChuyen', [$start, $end])
//            ->where('TrangThai', 2) //2-> đã hoàn thành
            ->count();

        $chuyenCoSuCo = DB::table('phieusuco')
            ->whereBetween('NgayTao', [$start, $end])
            ->distinct('phieuvanchuyen_id')
            ->count('phieuvanchuyen_id');

        $chuyenKhongSuCo = $totalChuyen - $chuyenCoSuCo;

        $data = [$chuyenCoSuCo, $chuyenKhongSuCo];

        $tong = max($totalChuyen, 1); // tránh chia 0

        $labels = [
            'Có sự cố (' . number_format(($chuyenCoSuCo / $tong) * 100, 1) . '%)',
//            'Không sự cố (' . number_format(($chuyenKhongSuCo / $tong) * 100, 1) . '%)',
        ];

        return [
            'datasets' => [
                [
                    'label' => 'Tỷ lệ sự cố ',
                    'data' => $data,
                    'backgroundColor' => [
                        'rgba(255, 99, 132, 0.7)',
                        'rgba(75, 192, 192, 0.7)',
                    ],
                ],
            ],
            'labels' => $labels,
        ];
    }
    protected function getType(): string
    {
        return 'pie';
    }
}
