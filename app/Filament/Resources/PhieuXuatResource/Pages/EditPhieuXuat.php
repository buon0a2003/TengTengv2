<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\PhieuXuatResource;
use App\Models\chitietphieuxuat;
use App\Models\phieuxuat;
use Filament\Actions;
use Filament\Notifications\Notification;

class EditPhieuXuat extends EditAndRedirectToIndex
{
    protected static string $resource = PhieuXuatResource::class;

    protected static ?string $title = 'Sửa phiếu xuất';

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
            Actions\DeleteAction::make()
                ->hidden(fn ($record): bool => $record->TrangThai === 1 || $record->TrangThai === 2)
                ->requiresConfirmation()
                ->modalDescription('Xoá phiếu xuất sẽ xoá tất cả thông tin kèm theo. Bạn chắc chắn chưa?')
                ->action(
                    function ($data, $record): void {
                        chitietphieuxuat::where('phieuxuat_id', $record->id)->delete();

                        phieuxuat::destroy($record->id);

                        Notification::make()
                            ->title('Đã xoá phiếu xuất thành công!')
                            ->success()
                            ->send();

                        redirect()->to(route('filament.admin.resources.phieuxuat.index'));
                    }

                ),
        ];
    }
}
