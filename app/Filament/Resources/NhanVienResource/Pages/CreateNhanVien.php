<?php

declare(strict_types=1);

namespace App\Filament\Resources\NhanVienResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\NhanVienResource;

class CreateNhanVien extends CreateAndRedirectToIndex
{
    protected static string $resource = NhanVienResource::class;

    protected static ?string $title = 'Tạo nhân viên mới';

    protected static ?string $breadcrumb = 'Tạo mới';

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotificationTitle(): ?string
    {
        return 'Đã tạo nhân viên mới thành công';
    }
}
