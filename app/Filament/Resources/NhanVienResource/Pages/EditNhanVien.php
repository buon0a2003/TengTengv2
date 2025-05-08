<?php

declare(strict_types=1);

namespace App\Filament\Resources\NhanVienResource\Pages;

use Filament\Actions;
use App\Filament\EditAndRedirectToIndex;
use Filament\Resources\Pages\EditRecord;
use App\Filament\Resources\NhanVienResource;

class EditNhanVien extends EditAndRedirectToIndex
{
    protected static string $resource = NhanVienResource::class;

    protected static ?string $title = 'Cập nhật nhân viên';

    protected static ?string $breadcrumb = 'Cập nhật';

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getSavedNotificationTitle(): ?string
    {
        return 'Đã cập nhật nhân viên thành công';
    }
}
