<?php

declare(strict_types=1);

namespace App\Filament\Widgets;

use App\Models\tonkho;
use App\Models\donvitinh;
use App\Models\phieunhap;
use Arr;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use EightyNine\FilamentAdvancedWidget\AdvancedTableWidget as BaseWidget;

class BangWidget extends BaseWidget
{
    public function table(Table $table): Table
    {
        return $table
            ->paginated()
            ->emptyStateHeading('Tồn kho đủ số lượng an toàn')
            ->heading('Tình trạng tồn kho')
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
            )
            ->columns([
                TextColumn::make('vattu.TenVT')
                    ->label('Tên vật tư'),
                TextColumn::make('SoLuong')
                    ->label('Số lượng'),
                TextColumn::make('vattu.donvitinh.TenDVT')
                    // ->formatStateUsing(fn($record): string => (donvitinh::find($record->vattu_id)->TenDVT))
                    ->label('Đơn vị tính'),
                TextColumn::make('kho.TenKho')
                    ->label('Kho'),
                TextColumn::make('vitri.Mota')
                    ->label('Vị trí'),
                TextColumn::make('level')
                    ->label('Tình trạng')
                    ->color(fn(string $state): string => match ($state) {
                        'Cảnh báo' => 'danger',
                        'Rất thấp' => 'warning',
                        'Thấp' => 'info',
                    })
                    ->badge()
                //     ->getStateUsing(function ($record) use ($nguong) {
                //         if ($record->SoLuong <= $nguong['critical']) {
                //             return 'Cảnh báo';
                //         } elseif ($record->SoLuong <= $nguong['very low']) {
                //             return 'Rất thấp';
                //         } elseif ($record->SoLuong <= $nguong['low']) {
                //             return 'Thấp';
                //         }
                //         return 'An toàn';
                //     }),
            ]);
    }
}
