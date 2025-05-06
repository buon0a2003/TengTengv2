<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuVanChuyenResource\Pages;

use App\Filament\Resources\PhieuVanChuyenResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPhieuVanChuyens extends ListRecords
{
    protected static string $resource = PhieuVanChuyenResource::class;

    protected static ?string $title = 'Danh sách phiếu vận chuyển';

    protected static ?string $breadcrumb = 'Danh sách phiếu vận chuyển';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->icon('heroicon-o-plus')
                ->label('Tạo mới'),
        ];
    }
}
