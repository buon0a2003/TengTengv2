<?php

declare(strict_types=1);

namespace App\Filament\Pages;

use App\Filament\Widgets\TiLeSuCoChart;
use App\Models\phieusuco;
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

class ThongkeSucoPage extends Page implements HasForms, HasTable
{
    use HasPageShield;
    use InteractsWithForms;
    use InteractsWithTable;

    public $year;

    public $month;

    public ?int $status = null;

    protected static ?string $navigationIcon = 'heroicon-o-exclamation-circle';

    protected static string $view = 'filament.pages.thongke-suco-page';

    protected static ?string $modelLabel = 'Thống kê';

    protected static ?string $navigationLabel = 'Thống kê sự cố';

    protected static ?string $navigationGroup = 'Báo cáo thống kê';

    protected static ?string $slug = 'thongke-suco';

    protected static ?string $title = 'Thống kê sự cố';

    public function getHeading(): string
    {
        return 'Thống kê sự cố tháng '.str_pad((string) $this->month, 2, '0', STR_PAD_LEFT).'/'.$this->year;
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
                    ->label('Mã sự cố')
                    ->sortable(),
                Tables\Columns\TextColumn::make('phieuxuat_id')
                    ->label('Phiếu xuất')
                    ->sortable(),
                Tables\Columns\TextColumn::make('phieuvanchuyen_id')
                    ->label('Phiếu vận chuyển')
                    ->sortable(),
                Tables\Columns\TextColumn::make('NgayTao')
                    ->label('Ngày tạo')
                    ->date('d/m/Y')
                    ->sortable(),
                Tables\Columns\TextColumn::make('user.name')
                    ->label('Người tạo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('Mota')
                    ->label('Mô tả')
                    ->searchable()
                    ->wrap(),
                Tables\Columns\TextColumn::make('GhiChu')
                    ->label('Ghi chú')
                    ->searchable()
                    ->wrap(),
                Tables\Columns\TextColumn::make('TrangThai')
                    ->label('Trạng thái')
                    ->formatStateUsing(fn (string $state): string => $this->getTrangThaiText($state))
                    ->badge()
                    ->color(fn (string $state): string => match ((int) $state) {
                        0 => 'warning',   // Mới tạo
                        1 => 'info',      // Đang xử lý
                        2 => 'success',   // Đã giải quyết
                        3 => 'danger',    // Đã hủy
                        default => 'gray',
                    }),
            ])
            ->defaultSort('NgayTao', 'desc')
            ->paginated([10, 25, 50, 100]);
    }

    public function getTrangThaiText($value): string
    {
        return match ((int) $value) {
            0 => 'Mới tạo',
            1 => 'Đang xử lý',
            2 => 'Đã giải quyết',
            3 => 'Đã hủy',
            default => 'Không xác định',
        };
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
                    })
                    ->columnSpan(2),
            ]),
        ];
    }

    protected function getTableQuery(): Builder
    {
        $start = Carbon::createFromDate($this->year, $this->month, 1)->startOfMonth();
        $end = $start->copy()->endOfMonth();

        $query = phieusuco::query()
            ->with('user')
            ->whereBetween('NgayTao', [$start, $end]);

        if (! is_null($this->status)) {
            $query->where('TrangThai', $this->status);
        }

        return $query;
    }

    protected function getFooterWidgets(): array
    {
        TiLeSuCoChart::$year = (int) $this->year;
        TiLeSuCoChart::$month = (int) $this->month;

        return [
            TiLeSuCoChart::class,
        ];
    }
}
