<?php

namespace App\Filament\Exports;

use App\Models\vattu;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class VattuExporter extends Exporter
{
    protected static ?string $model = vattu::class;

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
        $body = 'Xuất dữ liệu hoàn tất';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body = 'Xuất dữ liệu hoàn tất, nhưng có ' . $failedRowsCount . ' hàng không thành công';
        }

        return $body;
    }
}
