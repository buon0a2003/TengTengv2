<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuDieuChuyenResource\Pages;

use App\Filament\Resources\PhieuDieuChuyenResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewPhieuDieuChuyen extends ViewRecord
{
    protected static string $resource = PhieuDieuChuyenResource::class;

    protected static ?string $title = 'Chi tiết phiếu điều chuyển';

    protected static ?string $breadcrumb = 'Chi tiết';

    public function hasCombinedRelationManagerTabsWithContent(): bool
    {
        return true;
    }

    public function getContentTabLabel(): ?string
    {
        return 'Xem';
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make()
                ->label('Chỉnh sửa')
                ->icon('heroicon-s-pencil'),
        ];
    }
}
