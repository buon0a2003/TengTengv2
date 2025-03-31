<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use App\Filament\Resources\PhieuNhapResource;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;

class ListPhieuNhaps extends ListRecords
{
    protected static string $resource = PhieuNhapResource::class;

    protected static ?string $title = 'Quản lý phiếu nhập';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->icon('heroicon-o-plus')
                ->label('Tạo mới'),

            Actions\CreateAction::make()
                ->label('xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('primary'),
        ];
    }

    public function getTabs(): array
    {

        $tabs = ['all' => Tab::make('All')
            ->badge($this->getModel()::count())];


        $tabs['nhaptp'] = Tab::make('Nhập thành phẩm')
            ->modifyQueryUsing(function ($query) {
                return $query->where('LyDo', 0);
            })
            ->badge($this->getModel()::where('LyDo', 0)->count());

        $tabs['nhapnvl'] = Tab::make('Nhập nguyên vật liệu')
            ->modifyQueryUsing(function ($query) {
                return $query->where('LyDo', 1);
            })
            ->badge($this->getModel()::where('LyDo', 1)->count());

//        $tiers = Tier::orderBy('order_column', 'asc')
//            ->withCount('customers')
//            ->get();
//
//        foreach ($tiers as $tier) {
//            $name = $tier->name;
//            $slug = str($name)->slug()->toString();
//
//            $tabs[$slug] = Tab::make($name)
//                ->badge($tier->customers_count)
//                ->modifyQueryUsing(function ($query) use ($tier) {
//                    return $query->where('tier_id', $tier->id);
//                });
//        }

        return $tabs;
    }
}
