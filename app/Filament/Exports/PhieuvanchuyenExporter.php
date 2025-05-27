<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\phieuvanchuyen;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class PhieuvanchuyenExporter extends Exporter
{
    protected static ?string $model = phieuvanchuyen::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã phiếu vận chuyển'),
            ExportColumn::make('phieuxuat.id')->label('Phiếu xuất'),
            ExportColumn::make('xetai.BienSo')->label('Biển số xe'),
            ExportColumn::make('taixe.TenTaiXe')->label('Tài xế'),
            ExportColumn::make('user.name')->label('Người tạo'),
            ExportColumn::make('NgayTao')->label('Ngày tạo'),
            ExportColumn::make('NgayVanChuyen')->label('Ngày vận chuyển'),
            ExportColumn::make('GhiChu')->label('Ghi chú'),
            ExportColumn::make('TrangThai')
                ->label('Trạng thái')
                ->formatStateUsing(function ($state) {
                    return match ($state) {
                        0 => 'Đang vận chuyển',
                        1 => 'Hoàn thành',
                        2 => 'Đã huỷ',
                        default => 'Không xác định',
                    };
                }),
            // ExportColumn::make('created_at')->label('Ngày tạo hệ thống'),
            // ExportColumn::make('updated_at')->label('Ngày cập nhật'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Xuất dữ liệu phiếu vận chuyển hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu phiếu vận chuyển hoàn tất, nhưng có '.$failedRowsCount.' hàng không thành công';
        }

        return $body;
    }
}
