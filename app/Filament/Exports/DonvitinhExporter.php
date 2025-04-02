<?php

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
        $body = 'Your donvitinh export has completed and ' . number_format($export->successful_rows) . ' ' . str('row')->plural($export->successful_rows) . ' exported.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to export.';
        }

        return $body;
    }
}
