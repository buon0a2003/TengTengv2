<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\phieudieuchuyen;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class PhieuDieuChuyenExporter extends Exporter
{
    protected static ?string $model = phieudieuchuyen::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')
                ->label('Mã phiếu'),
            ExportColumn::make('NgayLap')
                ->label('Ngày lập'),
            ExportColumn::make('user.name')
                ->label('Người lập'),
            ExportColumn::make('MaKhoNguon')
                ->label('Mã kho nguồn'),
            ExportColumn::make('khonguon.TenKho')
                ->label('Kho nguồn'),
            ExportColumn::make('MaKhoDich')
                ->label('Mã kho đích'),
            ExportColumn::make('khodich.TenKho')
                ->label('Kho đích'),
            ExportColumn::make('GhiChu')
                ->label('Ghi chú'),
            ExportColumn::make('TrangThai')
                ->label('Trạng thái')
                ->formatStateUsing(fn($state) => match ($state) {
                    0 => 'Đang xử lý',
                    1 => 'Đã xử lý',
                    2 => 'Đã huỷ',
                    default => 'N/A'
                }),
            ExportColumn::make('created_at')
                ->label('Ngày tạo'),
            ExportColumn::make('updated_at')
                ->label('Ngày cập nhật'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Xuất dữ liệu phiếu điều chuyển hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu phiếu điều chuyển hoàn tất, nhưng có ' . $failedRowsCount . ' hàng không thành công';
        }

        return $body;
    }
}
