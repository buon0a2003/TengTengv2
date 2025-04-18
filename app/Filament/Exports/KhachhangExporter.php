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
        $body = 'Xuất dữ liệu hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu hoàn tất, nhưng có ' . $failedRowsCount . ' hàng không thành công';
        }

        return $body;
    }
}
