<?php

declare(strict_types=1);

namespace App\Filament\Pages;

use App\Filament\Widgets\ThongKeHuyChart;
use App\Models\phieunhap;
use BezhanSalleh\FilamentShield\Traits\HasPageShield;
use Carbon\Carbon;
use Filament\Forms;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Pages\Page;
use Filament\Tables;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;

class HanghuyPage extends Page implements HasForms, HasTable
{
    use HasPageShield;
    use InteractsWithForms;
    use InteractsWithTable;

    public $year;
    public $month;

    protected static ?string $navigationIcon = 'heroicon-o-archive-box-x-mark';
    protected static string $view = 'filament.pages.hanghuy-page';
    protected static ?string $modelLabel = 'Thống kê';
    protected static ?string $navigationLabel = 'Thống kê hàng hủy';
    protected static ?string $navigationGroup = 'Báo cáo thống kê';
    protected static ?string $slug = 'thongke-hanghuy';

    public function getHeading(): string
    {
        return 'Thống kê hàng hủy tháng ' . str_pad((string) $this->month, 2, '0', STR_PAD_LEFT) . '/' . $this->year;
    }

    public function mount(): void
    {
        $now = now();
        $this->year = $now->year;
        $this->month = $now->month;

        $this->form->fill([
            'year' => $this->year,
            'month' => $this->month,
        ]);
    }

    public function updatedDate(): void
    {
        $state = $this->form->getState();
        $this->year = (int) $state['year'];
        $this->month = (int) $state['month'];
    }

    public function table(Table $table): Table
    {
        return $table
            ->query($this->getTableQuery())
            ->columns([
                Tables\Columns\TextColumn::make('id')
                    ->label('Mã phiếu')
                    ->sortable(),
                Tables\Columns\TextColumn::make('NgayNhap')
                    ->label('Ngày nhập')
                    ->date('d/m/Y')
                    ->sortable(),
                Tables\Columns\TextColumn::make('user.name')
                    ->label('Người tạo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('giamsat.name')
                    ->label('Người giám sát')
                    ->searchable(),
                Tables\Columns\TextColumn::make('kho.TenKho')
                    ->label('Kho')
                    ->searchable(),
                Tables\Columns\TextColumn::make('chitietphieunhap_sum_soluong')
                    ->label('Số lượng hàng hủy')
                    ->numeric()
                    ->sortable(),
            ])
            ->defaultSort('NgayNhap', 'desc')
            ->paginated([10, 25, 50, 100]);
    }

    protected function getTableQuery(): Builder
    {
        $start = Carbon::createFromDate($this->year, $this->month, 1)->startOfMonth();
        $end = $start->copy()->endOfMonth();

        return phieunhap::query()
            ->where('LyDo', '=', '2')
            ->where('TrangThai', '=', '1')
            ->whereBetween('NgayNhap', [$start, $end])
            ->withSum('chitietphieunhap', 'SoLuong')
            ->with(['user', 'giamsat', 'kho']);
    }

    protected function getFormSchema(): array
    {
        return [
            Forms\Components\Grid::make(2)->schema([
                Forms\Components\Select::make('month')
                    ->label('Tháng')
                    ->options(collect(range(1, 12))->mapWithKeys(fn ($m) => [$m => 'Tháng '.$m])->toArray())
                    ->reactive()
                    ->afterStateUpdated(function () {
                        $this->updatedDate();
                        $this->dispatch('refresh');
                    }),

                Forms\Components\Select::make('year')
                    ->label('Năm')
                    ->options(collect(range(now()->year - 5, now()->year + 1))->mapWithKeys(fn ($y) => [$y => $y])->toArray())
                    ->reactive()
                    ->afterStateUpdated(function () {
                        $this->updatedDate();
                        $this->dispatch('refresh');
                    }),
            ]),
        ];
    }

    protected function getFooterWidgets(): array
    {
        ThongKeHuyChart::$year = (int) $this->year;
        ThongKeHuyChart::$month = (int) $this->month;

        return [
            ThongKeHuyChart::class,
        ];
    }
}
