<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\phieusuco;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class PhieusucoExporter extends Exporter
{
    protected static ?string $model = phieusuco::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã phiếu sự cố'),
            ExportColumn::make('phieuxuat.id')->label('Phiếu xuất'),
            ExportColumn::make('phieuvanchuyen.id')->label('Phiếu vận chuyển'),
            ExportColumn::make('NgayTao')->label('Ngày tạo'),
            ExportColumn::make('user.name')->label('Người tạo'),
            ExportColumn::make('Mota')->label('Mô tả sự cố'),
            ExportColumn::make('GhiChu')->label('Ghi chú'),
            ExportColumn::make('TrangThai')
                ->label('Trạng thái')
                ->formatStateUsing(function ($state) {
                    return match ($state) {
                        0 => 'Đang xử lý',
                        1 => 'Đã xử lý',
                        2 => 'Đã huỷ',
                        default => 'Không xác định',
                    };
                }),
            ExportColumn::make('created_at')->label('Ngày tạo hệ thống'),
            ExportColumn::make('updated_at')->label('Ngày cập nhật'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Xuất dữ liệu phiếu sự cố hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu phiếu sự cố hoàn tất, nhưng có ' . $failedRowsCount . ' hàng không thành công';
        }

        return $body;
    }
}
