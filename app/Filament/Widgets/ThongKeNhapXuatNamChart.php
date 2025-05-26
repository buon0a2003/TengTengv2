<?php

namespace App\Filament\Widgets;

use App\Models\chitietphieunhap;
use App\Models\chitietphieuxuat;
use Filament\Widgets\ChartWidget;
class ThongKeNhapXuatNamChart extends ChartWidget
{
    public function getHeading(): string
    {
        return 'Thống kê nhập – xuất hàng hóa năm ' . now()->year;
    }

    protected static ?int $sort = 1;
    protected int|string|array $columnSpan = 'full';
    protected function getData(): array
    {
        $year = now()->year;

        $labels = collect(range(1, 12))->map(fn($month) => 'Tháng ' . $month)->toArray();

        $nhap = array_fill(1, 12, 0);
        $xuat = array_fill(1, 12, 0);

        $nhapData = ChitietPhieuNhap::query()
            ->selectRaw('MONTH(phieunhap.NgayNhap) as thang, SUM(SoLuong) as tong')
            ->join('phieunhap', 'phieunhap.id', '=', 'chitietphieunhap.phieunhap_id')
            ->where('phieunhap.TrangThai', '=',1)
            ->whereYear('phieunhap.NgayNhap', $year)
            ->groupByRaw('MONTH(phieunhap.NgayNhap)')
            ->pluck('tong', 'thang');

        foreach ($nhapData as $thang => $tong) {
            $nhap[(int)$thang] = $tong;
        }

        $xuatData = ChitietPhieuXuat::query()
            ->selectRaw('MONTH(phieuxuat.NgayXuat) as thang, SUM(SoLuong) as tong')
            ->join('phieuxuat', 'phieuxuat.id', '=', 'chitietphieuxuat.phieuxuat_id')
            ->where('phieuxuat.TrangThai', '=',1)
            ->whereYear('phieuxuat.NgayXuat', $year)
            ->groupByRaw('MONTH(phieuxuat.NgayXuat)')
            ->pluck('tong', 'thang');

        foreach ($xuatData as $thang => $tong) {
            $xuat[(int)$thang] = $tong;
        }

        return [
            'labels' => $labels,
            'datasets' => [
                [
                    'label' => 'Nhập',
                    'data' => array_values($nhap),
                    'backgroundColor' => 'rgba(52, 211, 153, 0.7)', // xanh
                    'borderColor' => 'rgba(52, 211, 153, 1)',
                    'borderWidth' => 1,
                ],
                [
                    'label' => 'Xuất',
                    'data' => array_values($xuat),
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
