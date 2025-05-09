<?php

declare(strict_types=1);

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\UserResource;
use App\Models\nhanvien;
use App\Models\User;
use App\Notifications\NewAccount;
use Exception;
use Filament\Actions\Action;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Mail;
use Spatie\Permission\Models\Role;

class CreateUser extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';

    protected static string $resource = UserResource::class;

    protected static ?string $breadcrumb = 'Tạo mới';

    protected string $plainPassword = '';

    protected $nhanvienData = [];

    public function mount(): void
    {
        parent::mount();

        $nhanvienId = request()->query('nhanvien_id');

        if ($nhanvienId) {
            $this->form->fill([
                'nhanvien_id' => $nhanvienId,
                'option' => 1,
            ]);
        }
    }
    public function shouldGetConfirm(): bool
    {
        try {
            $selectedRoleIds = $this->form->getState()['roles'] ?? [];
        } catch (Exception $e) {
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
                fn() => $this->shouldGetConfirm()
            )
            ->modalDescription(
                fn() => $this->shouldGetConfirm()
                    ? 'Bạn có chắc chắn muốn tạo người dùng với vai trò Super Admin?'
                    : null
            )
            ->action(function () {
                $this->closeActionModal();
                $this->create();
            })
            ->keyBindings(['mod+s']);
    }

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $this->plainPassword = $data['password'];
        $data['password'] = bcrypt($data['password']);
        $data['force_renew_password'] = true;

        if ($data['option'] == 1) {
            // Option 1: Link to existing nhanvien
            $nhanvien = nhanvien::find($data['nhanvien_id']);
            $data['name'] = $nhanvien->name;
            $data['Phone'] = $nhanvien->Phone;
            $data['Address'] = $nhanvien->Address;
            $data['cccd'] = $nhanvien->cccd;
            $data['Birth'] = $nhanvien->Birth;
            $data['image'] = $nhanvien->image;
        } else {
            // Option 0: Save nhanvien data for creating after user is created
            $this->nhanvienData = [
                'name' => $data['name'] ?? null,
                'Phone' => $data['Phone'] ?? null,
                'Address' => $data['Address'] ?? null,
                'Birth' => $data['Birth'] ?? null,
                'image' => $data['image'] ?? null,
                'cccd' => $data['cccd'] ?? null,
            ];
        }

        return $data;
    }

    protected function handleRecordCreation(array $data): \Illuminate\Database\Eloquent\Model
    {
        /** @var User $user */
        $user = parent::handleRecordCreation($data);

        // If option 0 was selected, create a new nhanvien record
        if (isset($data['option']) && $data['option'] == 0 && !empty($this->nhanvienData)) {
            $nhanvien = nhanvien::create($this->nhanvienData);

            // Link the nhanvien to the user (without triggering observer events)
            User::withoutEvents(function () use ($user, $nhanvien) {
                $user->update(['nhanvien_id' => $nhanvien->id]);
            });
        }

        $user->notify(new NewAccount($this->plainPassword));

        return $user;
    }

    protected function getCreateAnotherFormAction(): Action
    {
        return parent::getCreateAnotherFormAction()
            ->label('Tạo tiếp')
            ->requiresConfirmation(
                fn() => $this->shouldGetConfirm()
            )
            ->modalDescription(
                fn() => $this->shouldGetConfirm()
                    ? 'Bạn có chắc chắn muốn tạo người dùng với vai trò Super Admin?'
                    : null
            )
            ->action(function () {
                $this->closeActionModal();
                $this->create();
            })
            ->keyBindings(['mod+s']);
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo thành công')
            ->body('Đã tạo mới người dùng.');
    }
}
