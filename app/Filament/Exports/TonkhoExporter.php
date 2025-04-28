<?php

declare(strict_types=1);

namespace App\Filament\Exports;

use App\Models\donvitinh;
use App\Models\tonkho;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class TonkhoExporter extends Exporter
{
    protected static ?string $model = tonkho::class;

    protected static ?string $modelLabel = 'Tồn kho';

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('kho.TenKho')->label('Tên kho'),
            ExportColumn::make('vattu.TenVT')->label('Tên vật tư'),
            ExportColumn::make('SoLuong')->label('Số lượng'),
            ExportColumn::make('vattu.donvitinh.TenDVT')
                // ->formatStateUsing(fn ($record): string => (donvitinh::find($record->vattu_id)->TenDVT))
                ->label('Đơn vị tính'),
            ExportColumn::make('vitri.Mota')->label('vị trí'),
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
