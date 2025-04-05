<?php

declare(strict_types=1);

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\UserResource;
use Filament\Actions\Action;
use Filament\Notifications\Notification;
use Spatie\Permission\Models\Role;
use Filament\Resources\Pages\CreateRecord;

class CreateUser extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';
    protected static string $resource = UserResource::class;

    public function shouldGetConfirm(): bool {
        try {
            $selectedRoleIds = $this->form->getState()['roles'] ?? [];
        } catch (\Exception $e) {
            return false;
        }
        $roleNames = Role::whereIn('id', $selectedRoleIds)->pluck('name')->toArray();

        return in_array('super_admin', $roleNames);
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
                ? 'Bạn có chắc chắn muốn tạo người dùng với vai trò Super Admin?' 
                : null
            )
            ->action(function () {
                $this->closeActionModal();
                $this->create();
            })
            ->keyBindings(['mod+s']);
    }

}
