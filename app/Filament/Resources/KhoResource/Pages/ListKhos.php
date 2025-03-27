<?php

namespace App\Filament\Resources\KhoResource\Pages;

use App\Filament\Resources\KhoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListKhos extends ListRecords
{
    protected static ?string $title = 'Quản lý thông tin kho';


    protected static string $resource = KhoResource::class;

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
