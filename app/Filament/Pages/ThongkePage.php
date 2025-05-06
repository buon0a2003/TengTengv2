<?php

namespace App\Filament\Pages;


use App\Filament\Exports\ThongkeExport;
use BezhanSalleh\FilamentShield\Traits\HasPageShield;
use Carbon\Carbon;
use Filament\Actions\Action;
use Filament\Forms;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Pages\Page;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;

class ThongkePage extends Page implements HasForms
{
    use HasPageShield;
    use InteractsWithForms;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static string $view = 'filament.pages.thongke-page';

    protected static ?string $modelLabel = 'Thống kê';

    protected static ?string $navigationLabel = 'Thống kê';

    protected static ?string $navigationGroup = 'Báo cáo thống kê';

    protected static ?string $slug = 'thongke';

    protected static ?string $title = 'Thống kê Xuất Nhập Tồn';

    public $year;
    public $month;
    public $data = [];

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

    protected function getFormSchema(): array
    {
        return [
            Forms\Components\Grid::make(2)->schema([
                Forms\Components\Select::make('month')
                    ->label('Tháng')
                    ->options(collect(range(1, 12))->mapWithKeys(fn ($m) => [$m => 'Tháng ' . $m])->toArray())
                    ->reactive()
                    ->afterStateUpdated(fn () => $this->updatedDate()),

                Forms\Components\Select::make('year')
                    ->label('Năm')
                    ->options(collect(range(now()->year - 5, now()->year + 1))->mapWithKeys(fn ($y) => [$y => $y])->toArray())
                    ->reactive()
                    ->afterStateUpdated(fn () => $this->updatedDate()),
            ]),
        ];
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

        $vattu = DB::table('vattu')
            ->join('donvitinh', 'vattu.donvitinh_id', '=', 'donvitinh.id')
            ->select('vattu.id', 'MaVT', 'TenVT', 'LaTP', 'donvitinh.TenDVT')
            ->get();

        foreach ($vattu as $vt) {
            $import = DB::table('phieunhap')
                ->join('chitietphieunhap', 'phieunhap.id', '=', 'chitietphieunhap.phieunhap_id')
                ->where('phieunhap.TrangThai', 1)
                ->where('chitietphieunhap.vattu_id', $vt->id)
                ->whereBetween('NgayNhap', [$start, $end])
                ->sum('chitietphieunhap.SoLuong');

            $export = DB::table('phieuxuat')
                ->join('chitietphieuxuat', 'phieuxuat.id', '=', 'chitietphieuxuat.phieuxuat_id')
                ->where('phieuxuat.TrangThai', 1)
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
                'DonViTinh' => $vt->TenDVT,
                'opening' => $opening,
                'import' => $import,
                'export' => $export,
                'closing' => $closing,
            ]);
        }

        $this->data = $records->toArray();
    }

    protected function getHeaderActions(): array
    {
        return [
            Action::make('exportExcel')
                ->label('Xuất Excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->action('exportToExcel'),
        ];
    }

    public function exportToExcel()
    {
        $export = new ThongkeExport($this->data, $this->month, $this->year);
        return $export->download();
    }

}
