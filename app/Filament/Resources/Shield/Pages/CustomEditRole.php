<?php

namespace App\Filament\Resources\Shield\Pages;

use \BezhanSalleh\FilamentShield\Resources\RoleResource\Pages\EditRole;
use Filament\Actions\Action;

class CustomEditRole extends EditRole
{
    public function shouldGetConfirm(): bool {
        try {
            $selectedAll = $this->form->getState()['select_all'] ?? false;
        } catch (\Exception $e) {
            return false;
        }

        return $selectedAll;
    }

    protected function getSaveFormAction(): Action
    {
        return Action::make('save')
            ->label('Lưu lại')
            ->requiresConfirmation(
                fn () => $this->shouldGetConfirm()
            )
            ->modalDescription(
                fn () => $this->shouldGetConfirm()
                ? 'Bạn có chắc chắn muốn sửa vai trò với toàn bộ quyền không?' 
                : null
            )
            ->action(function () {
                $this->closeActionModal();
                $this->save();
            });

    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}