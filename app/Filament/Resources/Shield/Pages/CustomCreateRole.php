<?php

namespace App\Filament\Resources\Shield\Pages;

use \BezhanSalleh\FilamentShield\Resources\RoleResource\Pages\CreateRole;
use Filament\Actions\Action;

class CustomCreateRole extends CreateRole 
{

    public function shouldGetConfirm(): bool {
        try {
            $selectedAll = $this->form->getState()['select_all'] ?? false;
        } catch (\Exception $e) {
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
}