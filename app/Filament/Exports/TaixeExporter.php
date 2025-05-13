<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\taixe;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class TaixeExporter extends Exporter
{
    protected static ?string $model = taixe::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã tài xế'),
            ExportColumn::make('TenTaiXe')->label('Tên tài xế'),
            ExportColumn::make('Sdt')->label('Số điện thoại'),
            ExportColumn::make('CCCD')->label('Căn cước công dân'),
            ExportColumn::make('BangLai')->label('Bằng lái'),
            ExportColumn::make('DiaChi')->label('Địa chỉ'),
            ExportColumn::make('NamSinh')->label('Năm sinh'),
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
            ExportColumn::make('created_at')->label('Ngày tạo'),
            ExportColumn::make('updated_at')->label('Ngày cập nhật'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Xuất dữ liệu tài xế hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu tài xế hoàn tất, nhưng có ' . $failedRowsCount . ' hàng không thành công';
        }

        return $body;
    }
}
