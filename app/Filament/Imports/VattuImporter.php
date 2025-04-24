<?php

namespace App\Filament\Imports;

use App\Models\Vattu;
use Filament\Actions\Imports\ImportColumn;
use Filament\Actions\Imports\Importer;
use Filament\Actions\Imports\Models\Import;

class VattuImporter extends Importer
{
    protected static ?string $model = Vattu::class;

    public static function getColumns(): array
    {
        return [
            ImportColumn::make('MaVT')
                ->label('Mã vật tư')
                ->rules(['max:25']),
            ImportColumn::make('TenVT')
                ->label('Tên vật tư')
                ->rules(['max:50']),
            ImportColumn::make('LaTP')
                ->label('Là thành phẩm')
                ->boolean()
                ->rules(['boolean']),
            ImportColumn::make('donvitinh')
                ->label('Đơn vị tính')
                ->relationship(),
            ImportColumn::make('KichThuoc')
                ->label('Kích thước')
                ->rules(['max:50']),
            ImportColumn::make('MauSac')
                ->label('Màu sắc')
                ->rules(['max:50']),
            ImportColumn::make('DacDiem')
                ->label('Đặc điểm')
                ->rules(['max:50']),
        ];
    }

    public function resolveRecord(): ?Vattu
    {
        return Vattu::firstOrNew([
            // Update existing records, matching them by `$this->data['column_name']`
            'MaVT' => $this->data['MaVT'],
        ]);

        return new Vattu();
    }

    public static function getCompletedNotificationBody(Import $import): string
    {
        $body = 'Nhập hoàn thành';

        if ($failedRowsCount = $import->getFailedRowsCount()) {
            $body .= " với {$failedRowsCount} dòng không thành công";
        }

        return $body;
    }
}
