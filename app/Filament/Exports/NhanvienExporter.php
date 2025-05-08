<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\nhanvien;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class NhanvienExporter extends Exporter
{
    protected static ?string $model = nhanvien::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã'),
            ExportColumn::make('name')->label('Tên nhân viên'),
            ExportColumn::make('Birth')->label('Ngày sinh'),
            ExportColumn::make('Phone')->label('Số điện thoại'),
            ExportColumn::make('Address')->label('Địa chỉ'),
            ExportColumn::make('cccd')->label('CCCD'),
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
