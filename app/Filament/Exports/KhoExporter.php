<?php

namespace App\Filament\Exports;

use App\Models\kho;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class KhoExporter extends Exporter
{
    protected static ?string $model = kho::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã kho'),
            ExportColumn::make('TenKho')->label('Tên kho'),
            ExportColumn::make('DiaChi')->label('Địa chỉ'),
            ExportColumn::make('GhiChu')->label('Ghi chú'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Xuất dữ liệu hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu hoàn tất, nhưng có ' . $failedRowsCount . ' hàng không thành công';
        }

        return $body;
    }
}
