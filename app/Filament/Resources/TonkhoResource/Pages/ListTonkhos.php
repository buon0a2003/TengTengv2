<?php

namespace App\Filament\Resources\TonkhoResource\Pages;

use App\Filament\Exports\TonkhoExporter;
use App\Filament\Resources\TonkhoResource;
use App\Models\kho;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTonkhos extends ListRecords
{
    protected static string $resource = TonkhoResource::class;

    protected static ?string $title = 'Danh sách tồn kho';

    protected function getHeaderActions(): array
    {
        return [
//            Actions\CreateAction::make(),
            Actions\ExportAction::make()
                ->label('Xuất Excel')
                ->icon('heroicon-o-document-arrow-down')
                ->color('primary')
                ->exporter(TonkhoExporter::class),
        ];
    }

//    public function updatedFetchWarehouse(): void
//    {
//        $this->setStatusFilter($this->fetchwarehouse);
//    }
}
