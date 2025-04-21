<?php

namespace App\Filament\Resources\TonkhoResource\Pages;

use App\Models\kho;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Actions\ExportAction;
use App\Filament\Exports\TonkhoExporter;
use Filament\Resources\Pages\ListRecords;
use App\Filament\Resources\TonkhoResource;

class ListTonkhos extends ListRecords
{
    protected static string $resource = TonkhoResource::class;

    protected static ?string $title = 'Danh sách tồn kho';

    protected function getHeaderActions(): array
    {
        return [
//            Actions\CreateAction::make(),
            Action::make('nhaptondau')
                ->label('nhập tồn đầu')
                ->icon('heroicon-o-plus')
                ->url(TonkhoResource::getUrl('tondau'))
                ->color('success'),

            ExportAction::make()
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
