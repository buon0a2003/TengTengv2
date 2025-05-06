<?php

declare(strict_types=1);

namespace App\Filament\Resources\XeTaiResource\Pages;

use App\Filament\Resources\XeTaiResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListXeTais extends ListRecords
{
    protected static string $resource = XeTaiResource::class;

    protected static ?string $title = 'Danh sách xe tải';

    protected static ?string $breadcrumb = 'Danh sách xe tải';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
