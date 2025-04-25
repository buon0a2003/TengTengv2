<?php

declare(strict_types=1);

namespace App\Filament\Resources\Shield\Pages;

use App\Filament\Resources\CustomRoleResource;
use BezhanSalleh\FilamentShield\Resources\RoleResource\Pages\CreateRole;
use Exception;
use Filament\Actions\Action;
use Filament\Notifications\Notification;

class CustomCreateRole extends CreateRole
{
    protected static string $resource = CustomRoleResource::class;
    protected static ?string $title = 'Tạo mới chức vụ';
    protected static ?string $breadcrumb = 'Tạo mới';
    public function shouldGetConfirm(): bool
    {
        try {
            $selectedAll = $this->form->getState()['select_all'] ?? false;
        } catch (Exception $e) {
            return false;
        }

        return $selectedAll;
    }

    protected function getCreateFormAction(): Action
    {
        return Action::make('create')
            ->label('Tạo mới')
            ->icon('heroicon-s-plus')
            ->requiresConfirmation(
                fn () => $this->shouldGetConfirm()
            )
            ->modalDescription(
                fn () => $this->shouldGetConfirm()
                ? 'Bạn có chắc chắn muốn tạo mới vai trò với Toàn bộ quyền không?'
                : null
            )
            ->action(function () {
                $this->closeActionModal();
                $this->create();
            });

    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo mới thành công')
            ->body('Đã tạo mới chức vụ.');
    }
}
