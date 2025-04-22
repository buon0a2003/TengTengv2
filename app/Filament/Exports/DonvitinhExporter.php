<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\donvitinh;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class DonvitinhExporter extends Exporter
{
    protected static ?string $model = donvitinh::class;

    protected static ?string $modelLabel = 'Đơn vị tính';

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')
                ->label('Mã'),

            ExportColumn::make('TenDVT')
                ->label('Tên đơn vị tính'),

            ExportColumn::make('Mota')
                ->label('Mô tả'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Xuất dữ liệu hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu hoàn tất, nhưng có '.$failedRowsCount.' hàng không thành công';
        }

        return $body;
    }
}
