<?php

namespace App\Filament\Exports;

use App\Models\Vattu;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class VattuExporter extends Exporter
{
    protected static ?string $model = Vattu::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('Mã vật tư'),
            ExportColumn::make('TenVT')->label('Tên vật tư'),
            ExportColumn::make('donvitinh.TenDVT')->label('Đơn vị tính'),
            ExportColumn::make('KichThuoc')->label('Kích thước'),
            ExportColumn::make('MauSac')->label('Màu sắc'),
            ExportColumn::make('DacDiem')->label('Dặc điểm'),
            ExportColumn::make('LaTP')->label('Là thành phẩm')->formatStateUsing(fn ($record) => $record->LaTP ? 'Có' : 'Không'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Your vattu export has completed and ' . number_format($export->successful_rows) . ' ' . str('row')->plural($export->successful_rows) . ' exported.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to export.';
        }

        return $body;
    }
}
