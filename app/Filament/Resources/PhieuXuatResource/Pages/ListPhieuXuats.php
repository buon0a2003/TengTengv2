<?php

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\Resources\PhieuXuatResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Filament\Resources\Components\Tab;

class ListPhieuXuats extends ListRecords
{
    protected static string $resource = PhieuXuatResource::class;
    protected static ?string $title = 'Quản lý phiếu xuất';
    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    public function getTabs(): array
    {

        $tabs = ['all' => Tab::make('All')
            ->badge($this->getModel()::count())];


        $tabs['nhaptp'] = Tab::make('Xuất sản xuất')
            ->modifyQueryUsing(function ($query) {
                return $query->where('LyDo', 0);
            })
            ->badge($this->getModel()::where('LyDo', 0)->count());

        $tabs['nhapnvl'] = Tab::make('Xuất bán')
            ->modifyQueryUsing(function ($query) {
                return $query->where('LyDo', 1);
            })
            ->badge($this->getModel()::where('LyDo', 1)->count());

        return $tabs;
    }
}
