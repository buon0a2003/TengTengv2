<?php

namespace App\Filament\Exports;

use App\Models\nhacungcap;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class NhacungcapExporter extends Exporter
{
    protected static ?string $model = nhacungcap::class;
    protected static ?string $modelLabel = 'Nhà cung cấp';

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã'),
            ExportColumn::make('TenNCC')->label('Tên nhà cung cấp'),
            ExportColumn::make('Sdt')->label('Số điện thoại'),
            ExportColumn::make('Email')->label('Email'),
            ExportColumn::make('DiaChi')->label('Địa chỉ'),
            ExportColumn::make('MaSoThue')->label('Mã Số thuế'),
            ExportColumn::make('GhiChu')->label('Ghi chú'),
            ExportColumn::make('created_at')->label('Ngày tạo'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Dữ liệu tồn kho đã hoàn thành, ' . number_format($export->successful_rows) . ' ' . str('dòng')->plural($export->successful_rows) . ' đã xuất.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('dòng')->plural($failedRowsCount) . ' xuất không thành công.';
        }

        return $body;
    }
}
