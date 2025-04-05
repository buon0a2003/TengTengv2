<?php

declare(strict_types=1);

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\UserResource;
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

    protected string $plainPassword = '';

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $this->plainPassword = $data['password'];

        $data['password'] = bcrypt($data['password']);

        return $data;
    }

    protected function afterCreate(): void
    {
        $user = $this->record;

        Mail::raw("Tài khoản của bạn đã được tạo:\n\nEmail: {$user->email}\nMật khẩu: {$this->plainPassword}", function ($message) use ($user) {
            $message->to($user->email)
                ->subject('Thông tin tài khoản');
        });
    }
}
