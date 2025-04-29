<?php

namespace App\Filament\Pages;

use Carbon\Carbon;
use Filament\Pages\Page;
use Illuminate\Support\Facades\DB;

class ThongkePage extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static string $view = 'filament.pages.thongke-page';

    protected static ?string $modelLabel = 'Thống kê';

    protected static ?string $navigationLabel = 'Thống kê';

    protected static ?string $navigationGroup = 'Báo cáo thống kê';

    protected static ?string $slug = 'thongke';

    protected static ?string $title = 'Thống kê Xuất Nhập Tồn';

    public $year;
    public $data = [];

    public function mount(): void
    {
        $this->year = now()->year;
        $this->loadData();
    }

    public function updatedYear()
    {
        $this->loadData();
    }

    public function loadData()
    {
        $records = collect();
        $month = 4;

        $start = Carbon::createFromDate($this->year, $month, 1)->startOfMonth();
        $end = $start->copy()->endOfMonth();
        $lastMonthDate = $start->copy()->subMonth()->endOfMonth();


        $vattus = DB::table('vattu')->select('id', 'MaVT', 'TenVT', 'LaTP')->get();


        foreach ($vattus as $vt) {
            $import = DB::table('phieunhap')
                ->join('chitietphieunhap', 'phieunhap.id', '=', 'chitietphieunhap.phieunhap_id')
                ->where('chitietphieunhap.vattu_id', $vt->id)
                ->whereBetween('NgayNhap', [$start, $end])
                ->sum('chitietphieunhap.SoLuong');

            $export = DB::table('phieuxuat')
                ->join('chitietphieuxuat', 'phieuxuat.id', '=', 'chitietphieuxuat.phieuxuat_id')
                ->where('chitietphieuxuat.vattu_id', $vt->id)
                ->whereBetween('NgayXuat', [$start, $end])
                ->sum('chitietphieuxuat.SoLuong');

            $opening = DB::table('tonkho')
                ->where('vattu_id', $vt->id)
                ->whereDate('NgayCapNhat', '<=', $start->copy()->subMonth()->endOfMonth())
                ->sum('SoLuong');

            $closing = DB::table('tonkho')
                ->where('vattu_id', $vt->id)
                ->whereDate('NgayCapNhat', '<=', $end)
                ->sum('SoLuong');

            $records->push([
                'MaVT' => $vt->MaVT,
                'TenVT' => $vt->TenVT,
                'LaTP' => $vt->LaTP,
                'opening' => $opening,
                'import' => $import,
                'export' => $export,
                'closing' => $closing,
            ]);
        }

        $this->data = $records->toArray();
    }
}
