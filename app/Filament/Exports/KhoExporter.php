<?php

namespace App\Filament\Exports;

use App\Models\Kho;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class KhoExporter extends Exporter
{
    protected static ?string $model = Kho::class;

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
        $body = 'Your kho export has completed and ' . number_format($export->successful_rows) . ' ' . str('row')->plural($export->successful_rows) . ' exported.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to export.';
        }

        return $body;
    }
}
