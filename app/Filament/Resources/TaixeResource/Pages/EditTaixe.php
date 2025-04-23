<?php

declare(strict_types=1);

namespace App\Filament\Resources\TaixeResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\TaixeResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTaixe extends EditAndRedirectToIndex
{
    protected static string $resource = TaixeResource::class;
    protected static ?string $title = 'Sửa tài xế';
    protected static ?string $breadcrumb = 'Sửa';
    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
