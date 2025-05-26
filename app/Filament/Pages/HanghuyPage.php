<?php

namespace App\Filament\Pages;

use App\Filament\Widgets\ThongKeHuyChart;
use BezhanSalleh\FilamentShield\Traits\HasPageShield;
use Carbon\Carbon;
use Filament\Forms;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Pages\Page;
use Illuminate\Support\Facades\DB;

class HanghuyPage extends Page
{

    use HasPageShield;
    use InteractsWithForms;

    public $year;

    public $month;

    public ?int $status = null;

    public $data = [];

    protected static ?string $navigationIcon = 'heroicon-o-archive-box-x-mark';

    protected static string $view = 'filament.pages.hanghuy-page';

    protected static ?string $modelLabel = 'Thống kê';

    protected static ?string $navigationLabel = 'Thống kê hàng hủy';

    protected static ?string $navigationGroup = 'Báo cáo thống kê';

    protected static ?string $slug = 'thongke-hanghuy';

    protected static ?string $title = 'Thống kê hàng hủy';
    public function mount(): void
    {
        $now = now();
        $this->year = $now->year;
        $this->month = $now->month;

        $this->form->fill([
            'year' => $this->year,
            'month' => $this->month,
        ]);

        $this->loadData();
    }

    public function updatedDate()
    {
        $state = $this->form->getState();
        $this->year = $state['year'];
        $this->month = $state['month'];
        $this->loadData();
    }

    public function loadData()
    {
        $records = collect();

        $start = Carbon::createFromDate($this->year, $this->month, 1)->startOfMonth();
        $end = $start->copy()->endOfMonth();

        $query = DB::table('phieunhap')
            ->join('users as nguoinhap', 'phieunhap.user_id', '=', 'nguoinhap.id')
            ->join('users as giamsat', 'phieunhap.giamsat_id', '=', 'giamsat.id')
            ->join('kho', 'phieunhap.kho_id', '=', 'kho.id')
            ->join('chitietphieunhap', 'chitietphieunhap.phieunhap_id', '=', 'phieunhap.id')
            ->where('phieunhap.LyDo', '=', '2')
            ->where('phieunhap.TrangThai', '=', '1')
            ->select('phieunhap.id as id',
                'NgayNhap',
                'nguoinhap.name as user_name',
                'giamsat.name as giamsat_name',
                'kho.TenKho as kho_name',
                DB::raw('SUM(chitietphieunhap.SoLuong) as TongSoLuong'))
            ->whereBetween('NgayNhap', [$start, $end])
        ->groupBy(
        'phieunhap.id',
        'phieunhap.NgayNhap',
        'nguoinhap.name',
        'giamsat.name',
        'kho.TenKho',
        'phieunhap.GhiChu'
    );
        $ds_huy = $query->get();


        foreach ($ds_huy as $huy) {

            $records->push([
                'MaPhieu' => $huy->id,
                'NgayNhap' => $huy->NgayNhap,
                'NguoiTao' => $huy->user_name,
                'NguoiGiamSat' => $huy->giamsat_name,
                'Kho' => $huy->kho_name,
                'TongSoLuong' => $huy->TongSoLuong,
            ]);
        }

        $this->data = $records->toArray();
    }

    protected function getFormSchema(): array
    {
        return [
            Forms\Components\Grid::make(2)->schema([
                Forms\Components\Select::make('month')
                    ->label('Tháng')
                    ->options(collect(range(1, 12))->mapWithKeys(fn($m) => [$m => 'Tháng ' . $m])->toArray())
                    ->reactive()
                    ->afterStateUpdated(fn() => $this->updatedDate()),

                Forms\Components\Select::make('year')
                    ->label('Năm')
                    ->options(collect(range(now()->year - 5, now()->year + 1))->mapWithKeys(fn($y) => [$y => $y])->toArray())
                    ->reactive()
                    ->afterStateUpdated(fn() => $this->updatedDate()),

            ]),
        ];
    }

    protected function getFooterWidgets(): array
    {
        return [
            ThongKeHuyChart::class

        ];
    }

}
