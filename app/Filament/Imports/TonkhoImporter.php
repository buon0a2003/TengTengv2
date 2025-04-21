<?php

namespace App\Filament\Imports;

use App\Models\Tonkho;
use Filament\Actions\Imports\ImportColumn;
use Filament\Actions\Imports\Importer;
use Filament\Actions\Imports\Models\Import;

class TonkhoImporter extends Importer
{
    protected static ?string $model = Tonkho::class;

    public static function getColumns(): array
    {
        return [
            ImportColumn::make('kho')
                ->label('Kho')
                ->requiredMapping()
                ->relationship()
                ->rules(['required']),
            ImportColumn::make('vattu')
                ->label('Vật tư')
                ->requiredMapping()
                ->relationship()
                ->rules(['required']),
            ImportColumn::make('SoLuong')
                ->label('Số lượng')
                ->numeric()
                ->rules(['integer']),
            ImportColumn::make('vitri')
                ->label('Vị trí')
                ->relationship(),
        ];
    }

    public function resolveRecord(): ?Tonkho
    {
        // return Tonkho::firstOrNew([
        //     // Update existing records, matching them by `$this->data['column_name']`
        //     'email' => $this->data['email'],
        // ]);

        return new Tonkho();
    }

    public static function getCompletedNotificationBody(Import $import): string
    {
        $body = 'nhập thành công';

        if ($failedRowsCount = $import->getFailedRowsCount()) {
            $body .= ' nhưng có ' . $failedRowsCount . ' dòng không thành công';
        }

        return $body;
    }
}
