<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\phieuxuat;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class PhieuxuatExporter extends Exporter
{
    protected static ?string $model = phieuxuat::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã phiếu xuất'),
            ExportColumn::make('NgayXuat')->label('Ngày xuất'),
            ExportColumn::make('user.name')->label('Người tạo'),
            ExportColumn::make('kho.TenKho')->label('Kho'),
            ExportColumn::make('khachhang.TenKH')->label('Khách hàng'),
            ExportColumn::make('LyDo')
                ->label('Lý do')
                ->formatStateUsing(function ($state) {
                    return match ($state) {
                        0 => 'Xuất sản xuất',
                        1 => 'Xuất bán',
                        default => 'Không xác định',
                    };
                }),
            ExportColumn::make('GhiChu')->label('Ghi chú'),
            ExportColumn::make('TrangThai')
                ->label('Trạng thái')
                ->formatStateUsing(function ($state) {
                    return match ($state) {
                        0 => 'Chờ duyệt',
                        1 => 'Đã duyệt',
                        2 => 'Đã huỷ',
                        3 => 'Đang vận chuyển',
                        4 => 'Hoàn thành',
                        default => 'Không xác định',
                    };
                }),
            // ExportColumn::make('created_at')->label('Ngày tạo'),
            // ExportColumn::make('updated_at')->label('Ngày cập nhật'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Xuất dữ liệu phiếu xuất hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu phiếu xuất hoàn tất, nhưng có '.$failedRowsCount.' hàng không thành công';
        }

        return $body;
    }
}
