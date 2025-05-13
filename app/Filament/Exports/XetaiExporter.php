<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\xetai;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class XetaiExporter extends Exporter
{
    protected static ?string $model = xetai::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã xe tải'),
            ExportColumn::make('BienSo')->label('Biển số'),
            ExportColumn::make('TenXe')->label('Tên xe'),
            ExportColumn::make('HangXe')->label('Hãng xe'),
            ExportColumn::make('TaiTrong')->label('Tải trọng'),
            ExportColumn::make('MauSac')->label('Màu sắc'),
            ExportColumn::make('GhiChu')->label('Ghi chú'),
            ExportColumn::make('TrangThai')
                ->label('Trạng thái')
                ->formatStateUsing(function ($state) {
                    return match ($state) {
                        0 => 'Không hoạt động',
                        1 => 'Đang hoạt động',
                        default => 'Không xác định',
                    };
                }),
            // ExportColumn::make('created_at')->label('Ngày tạo'),
            // ExportColumn::make('updated_at')->label('Ngày cập nhật'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Xuất dữ liệu xe tải hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu xe tải hoàn tất, nhưng có ' . $failedRowsCount . ' hàng không thành công';
        }

        return $body;
    }
}
