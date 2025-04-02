<?php

namespace App\Filament\Exports;

use App\Models\Khachhang;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class KhachhangExporter extends Exporter
{
    protected static ?string $model = khachhang::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã'),
            ExportColumn::make('TenKH')->label('Tên khách hàng'),
            ExportColumn::make('Sdt')->label('Số điện thoại'),
            ExportColumn::make('Email'),
            ExportColumn::make('DiaChi')->label('Địa chỉ'),
            ExportColumn::make('GhiChu')->label('Ghi chú'),
            ExportColumn::make('created_at')->label('Ngày tạo'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Your khachhang export has completed and ' . number_format($export->successful_rows) . ' ' . str('row')->plural($export->successful_rows) . ' exported.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to export.';
        }

        return $body;
    }
}
