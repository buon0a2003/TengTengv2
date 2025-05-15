<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuDieuChuyenResource\Pages;

use App\Filament\Resources\PhieuDieuChuyenResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPhieuDieuChuyen extends EditRecord
{
    protected static string $resource = PhieuDieuChuyenResource::class;

    protected static ?string $title = 'Chỉnh sửa phiếu điều chuyển';

    protected static ?string $breadcrumb = 'Chỉnh sửa';

    public function hasCombinedRelationManagerTabsWithContent(): bool
    {
        return true;
    }

    public function getContentTabLabel(): ?string
    {
        return 'Sửa';
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make()
                ->label('Xem chi tiết')
                ->icon('heroicon-s-eye'),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getSaveFormAction(): Actions\Action
    {
        return parent::getSaveFormAction()
            ->label('Lưu')
            ->icon('heroicon-s-check');
    }
}
