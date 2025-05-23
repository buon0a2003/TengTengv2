<?php

namespace App\Filament\Pages;

use BezhanSalleh\FilamentShield\Traits\HasPageShield;
use Carbon\Carbon;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Pages\Page;
use Filament\Forms;
use Illuminate\Support\Facades\DB;
use \App\Filament\Widgets\TiLeSuCoChart;
class ThongkeSucoPage extends Page implements HasForms
{

    use HasPageShield;
    use InteractsWithForms;

    public $year;

    public $month;

    public ?int $status = null;

    public $data = [];

    protected static ?string $navigationIcon = 'heroicon-o-exclamation-circle';

    protected static string $view = 'filament.pages.thongke-suco-page';

    protected static ?string $modelLabel = 'Thống kê';

    protected static ?string $navigationLabel = 'Thống kê sự cố';

    protected static ?string $navigationGroup = 'Báo cáo thống kê';

    protected static ?string $slug = 'thongke-suco';

    protected static ?string $title = 'Thống kê sự cố';

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

        $query = DB::table('phieusuco')
            ->join('users', 'phieusuco.user_id', '=', 'users.id')
            ->select('phieusuco.id as id',
                'phieuxuat_id',
                'phieuvanchuyen_id',
                'NgayTao',
                'users.name as user_name',
                'Mota',
                'GhiChu',
                'TrangThai')
            ->whereBetween('NgayTao', [$start, $end]);

            if (!is_null($this->status)) {
                $query->where('TrangThai', $this->status);
            }

            $ds_suco = $query->get();


        foreach ($ds_suco as $suco) {

            $color = match ((int) $suco->TrangThai) {
                0 => 'bg-yellow-100 text-yellow-800',   // Mới tạo
                1 => 'bg-blue-100 text-blue-800',       // Đang xử lý
                2 => 'bg-green-100 text-green-800',     // Đã giải quyết
                3 => 'bg-red-100 text-red-800',         // Đã hủy
                default => 'bg-gray-100 text-gray-800',
            };

            $records->push([
                'MaSuCo' => $suco->id,
                'PhieuXuat' => $suco->phieuxuat_id,
                'PhieuVanChuyen' => $suco->phieuvanchuyen_id,
                'NgayTao' => $suco->NgayTao,
                'NguoiTao' => $suco->user_name,
                'MoTa' => $suco->Mota,
                'GhiChu' => $suco->GhiChu,
                'TrangThai' => $suco->TrangThai,
                'ColorClass' => $color,
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

                Forms\Components\Select::make('status')
                    ->label('Phân loại')
                    ->options([
                        0 => 'Mới tạo',
                        1 => 'Đang xử lý',
                        2 => 'Đã giải quyết',
                        3 => 'Đã hủy',
                    ])
                    ->reactive()
                    ->placeholder('Tất cả')
                    ->afterStateUpdated(function ($state) {
                        $this->status = $state;
                        $this->loadData();
                    })
                    ->columnSpan(2),
            ]),
        ];
    }

    public function getTrangThaiText($value): string
    {
        return match ((int)$value) {
            0 => 'Mới tạo',
            1 => 'Đang xử lý',
            2 => 'Đã giải quyết',
            3 => 'Đã hủy',
            default => 'Không xác định',
        };
    }
    protected function getFooterWidgets(): array
    {
        TiLeSuCoChart::$year = $this->year;
        TiLeSuCoChart::$month = $this->month;

        return [
            TiLeSuCoChart::class,
        ];
    }
}
