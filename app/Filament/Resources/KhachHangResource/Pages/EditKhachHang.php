<?php

declare(strict_types=1);

namespace App\Filament\Resources\KhachHangResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\KhachHangResource;
use Filament\Actions;

class EditKhachHang extends EditAndRedirectToIndex
{
    protected static string $resource = KhachHangResource::class;

    protected static ?string $title = 'Sửa khách hàng';

    protected function getHeaderActions(): array
    {
        return [
            //            Actions\DeleteAction::make(),
        ];
    }
}
