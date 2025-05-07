<?php

namespace App\Filament\Resources\PhieuSuCoResource\Pages;

use App\Filament\Resources\PhieuSuCoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPhieuSuCos extends ListRecords
{
    protected static string $resource = PhieuSuCoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tạo phiếu sự cố'),
        ];
    }

    public function getTitle(): string
    {
        return 'Danh sách phiếu sự cố';
    }
}
