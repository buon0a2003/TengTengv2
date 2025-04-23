<?php

declare(strict_types=1);

namespace App\Filament\Resources\NhaCungCapResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\NhaCungCapResource;
use Filament\Actions;

class EditNhaCungCap extends EditAndRedirectToIndex
{
    protected static string $resource = NhaCungCapResource::class;

    protected static ?string $title = 'Sửa nhà cung cấp';
    protected static ?string $breadcrumb = 'Sửa';
    protected function getHeaderActions(): array
    {
        return [
            //            Actions\DeleteAction::make(),
        ];
    }

}
