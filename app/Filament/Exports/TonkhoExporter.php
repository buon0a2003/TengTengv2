<?php

namespace App\Filament\Exports;

use App\Models\donvitinh;
use App\Models\tonkho;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class TonkhoExporter extends Exporter
{
    protected static ?string $model = tonkho::class;
    protected static ?string $modelLabel = 'Tồn kho';

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('kho.TenKho')->label('Tên kho'),
            ExportColumn::make('vattu.TenVT')->label('Tên vật tư'),
            ExportColumn::make('SoLuong')->label('Số lượng'),
            ExportColumn::make('vattu.donvitinh_id')
                ->formatStateUsing(fn ($record): string => (donvitinh::find($record->vattu_id)->TenDVT))
                ->label('Đơn vị tính'),
            ExportColumn::make('vitri.Mota')->label('vị trí'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Dữ liệu tồn kho đã hoàn thành, ' . number_format($export->successful_rows) . ' ' . str('dòng')->plural($export->successful_rows) . ' đã được xuất.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' xuất không thành công.';
        }

        return $body;
    }
}
