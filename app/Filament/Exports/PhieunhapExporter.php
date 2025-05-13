<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\phieunhap;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class PhieunhapExporter extends Exporter
{
    protected static ?string $model = phieunhap::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã phiếu nhập'),
            ExportColumn::make('NgayNhap')->label('Ngày nhập'),
            ExportColumn::make('user.name')->label('Người tạo'),
            ExportColumn::make('nhacungcap.TenNCC')->label('Nhà cung cấp'),
            ExportColumn::make('kho.TenKho')->label('Kho'),
            ExportColumn::make('LyDo')
                ->label('Lý do')
                ->formatStateUsing(function ($state) {
                    return match ($state) {
                        0 => 'Nhập thành phẩm',
                        1 => 'Nhập nguyên vật liệu',
                        2 => 'Hàng huỷ',
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
                        default => 'Không xác định',
                    };
                }),
            // ExportColumn::make('created_at')->label('Ngày tạo'),
            // ExportColumn::make('updated_at')->label('Ngày cập nhật'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Xuất dữ liệu phiếu nhập hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu phiếu nhập hoàn tất, nhưng có ' . $failedRowsCount . ' hàng không thành công';
        }

        return $body;
    }
}
