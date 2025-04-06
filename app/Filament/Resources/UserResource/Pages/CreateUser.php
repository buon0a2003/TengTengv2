<?php

declare(strict_types=1);

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\UserResource;
use App\Models\User;
use App\Notifications\NewAccount;
use Filament\Actions\Action;
use Filament\Notifications\Notification;
use Spatie\Permission\Models\Role;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\Facades\Mail;

/* copy đoạn này vào .env để chạy
MAIL_MAILER=smtp
MAIL_SCHEME=null
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=nt093225@gmail.com
MAIL_PASSWORD=grtudybwbhksvsyk
MAIL_FROM_ADDRESS="nt093225@gmail.com"
MAIL_FROM_NAME="${APP_NAME}"
*/
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

    protected string $plainPassword = '';

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $this->plainPassword = $data['password'];

        $data['password'] = bcrypt($data['password']);
        $data['force_renew_password'] = true;
        return $data;
    }

//    protected function afterCreate(): void
//    {
//        $user = $this->record;
//
//        Mail::raw("Tài khoản của bạn đã được tạo:\n\nEmail: {$user->email}\nMật khẩu: {$this->plainPassword}", function ($message) use ($user) {
//            $message->to($user->email)
//                ->subject('Thông tin tài khoản');
//        });
//    }

    protected function handleRecordCreation(array $data): \Illuminate\Database\Eloquent\Model
    {
        /** @var User $user */
        $user = parent::handleRecordCreation($data); // handle the creation of the new user

        $user->notify(new NewAccount($this->plainPassword)); // notify the new user with account details

        return $user;
    }

}
