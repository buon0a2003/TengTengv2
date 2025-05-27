<?php

declare(strict_types=1);

namespace App\Filament\Widgets;

use App\Models\chitietphieunhap;
use Filament\Widgets\ChartWidget;

class ThongKeHuyChart extends ChartWidget
{
    protected static ?int $sort = 1;

    public function getHeading(): string
    {
        return 'Thống kê nhập hàng hủy tháng '.now()->month.' năm '.now()->year;
    }

    //    protected int|string|array $columnSpan = 'full';
    protected function getData(): array
    {
        $year = now()->year;

        $labels = collect(range(1, 12))->map(fn ($month) => 'Tháng '.$month)->toArray();

        $huy = array_fill(1, 12, 0);

        $huyData = chitietphieunhap::query()
            ->selectRaw('MONTH(phieunhap.NgayNhap) as thang, SUM(SoLuong) as tong')
            ->join('phieunhap', 'phieunhap.id', '=', 'chitietphieunhap.phieunhap_id')
            ->where('phieunhap.LyDo', '=', '2')
            ->where('phieunhap.TrangThai', '=', '1')
            ->whereYear('phieunhap.NgayNhap', $year)
            ->groupByRaw('MONTH(phieunhap.NgayNhap)')
            ->pluck('tong', 'thang');

        foreach ($huyData as $thang => $tong) {
            $huy[(int) $thang] = $tong;
        }

        return [
            'labels' => $labels,
            'datasets' => [
                [
                    'label' => 'Hàng hủy',
                    'data' => array_values($huy),
                    'backgroundColor' => 'rgba(248, 113, 113, 0.7)', // đỏ
                    'borderColor' => 'rgba(248, 113, 113, 1)',
                    'borderWidth' => 1,
                ],
            ],
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
