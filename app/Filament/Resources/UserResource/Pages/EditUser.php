<?php

declare(strict_types=1);

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\UserResource;
use Exception;
use Filament\Actions;
use Filament\Actions\Action;
use Spatie\Permission\Models\Role;

class EditUser extends EditAndRedirectToIndex
{
    protected static string $resource = UserResource::class;

    protected static ?string $title = 'Sửa người dùng';
    protected static ?string $breadcrumb = 'Sửa';
    public function shouldGetConfirm(): bool
    {
        try {
            $selectedRoleIds = $this->form->getRawState()['roles'] ?? [];

        } catch (Exception $e) {
            return false;
        }
        $roleNames = Role::whereIn('id', $selectedRoleIds)->pluck('name')->toArray();

        return in_array('super_admin', $roleNames);
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function getSaveFormAction(): Action
    {
        return Action::make('lmao')
            ->label('Lưu thay đổi')
            ->requiresConfirmation(
                fn () => $this->shouldGetConfirm()
            )
            ->modalDescription(
                fn () => $this->shouldGetConfirm()
                ? 'Bạn có chắc chắn muốn lưu người dùng với vai trò Super Admin?'
                : ''
            )
            ->action(function () {
                $this->closeActionModal();
                $this->save();
            });
    }

}
