<?php

declare(strict_types=1);

namespace App\Filament\Widgets;

use Arr;
use App\Models\tonkho;
use App\Models\donvitinh;
use App\Models\phieunhap;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use EightyNine\FilamentAdvancedWidget\AdvancedTableWidget as BaseWidget;

class BangWidget extends BaseWidget
{

    protected static string $view = 'filament.widgets.canh-bao';
    public string $Emptymessage = 'Một số vật tư tồn kho đang thiếu hụt, vui lòng kiểm tra!';
    public string $Noemptymessage = 'Không có vật tư nào tồn kho thiếu hụt';
    protected string|int|array $columnSpan = 'full';

    // eèo eèo
    public static function canView(): bool
    {
        if (1) {
            return true;
        } else {
            return false;
        }
    }

    public function table(Table $table): Table
    {
        return $table
            ->paginated(false)
            ->heading('')
            ->emptyStateHeading(function (): string {
                return 'Tồn kho đủ số lượng an toàn';
            })
            ->query(
                TonKho::query()
                    ->select([
                        'tonkho.*',
                        \DB::raw('CASE
                                WHEN tonkho.SoLuong <= donvitinh.critical THEN "Cảnh báo"
                                WHEN tonkho.SoLuong <= donvitinh.very_low THEN "Rất thấp"
                                WHEN tonkho.SoLuong <= donvitinh.low THEN "Thấp"
                                ELSE "An toàn"
                            END as level'),
                    ])
                    ->join('vattu', 'vattu.id', '=', 'tonkho.vattu_id')
                    ->join('donvitinh', 'donvitinh.id', '=', 'vattu.donvitinh_id')
                    ->where(function ($query) {
                        $query->whereColumn('tonkho.SoLuong', '<=', 'donvitinh.critical')
                            ->orWhereColumn('tonkho.SoLuong', '<=', 'donvitinh.very_low')
                            ->orWhereColumn('tonkho.SoLuong', '<=', 'donvitinh.low');
                    })
                    ->with(['vattu.donvitinh'])

                // tonkho::where('id', '000')
            )
            ->columns([
                TextColumn::make('vattu.TenVT')->label('Tên vật tư'),
                TextColumn::make('SoLuong')->label('Số lượng còn lại'),
                TextColumn::make('vattu.donvitinh.TenDVT')->label('Đơn vị tính'),
                TextColumn::make('kho.TenKho')->label('Kho'),
                TextColumn::make('vitri.Mota')->label('Vị trí'),
                TextColumn::make('level')->label('Tình trạng')
                    ->color(fn(string $state): string => match ($state) {
                        'Cảnh báo' => 'danger',
                        'Rất thấp' => 'warning',
                        'Thấp' => 'info',
                    })
                    ->badge()
            ]);
    }
}
