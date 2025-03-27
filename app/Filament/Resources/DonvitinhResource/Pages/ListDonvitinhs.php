<?php

namespace App\Filament\Resources\DonvitinhResource\Pages;

use App\Filament\Resources\DonvitinhResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDonvitinhs extends ListRecords
{
    protected static string $resource = DonvitinhResource::class;

    protected static ?string $title = "Đơn vị tính";

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->icon('heroicon-o-plus')
                ->label('Tạo mới'),

            Actions\CreateAction::make()
                ->label('xuất excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('primary')
        ];
    }
}
