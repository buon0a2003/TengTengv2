<?php

declare(strict_types=1);

namespace App\Filament\Auth;

use Filament\Forms\Components\Component;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Get;
use Filament\Pages\Auth\EditProfile;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules\Password;

class CustomProfile extends EditProfile
{
    public static function isSimple(): bool
    {
        return false;
    }

    protected function getForms(): array
    {
        return [
            'form' => $this->form(
                $this->makeForm()
                    ->schema([
                        Section::make('Thông tin tài khoản')
                            ->description(__('Cập nhật thông tin tài khoản của bạn'))
                            ->schema([
                                $this->getNameFormComponent(),
                                $this->getEmailFormComponent(),
                                $this->getBirthFormComponent(),
                                $this->getPhoneFormComponent(),
                                $this->getAddressFormComponent(),
                            ])
                            ->aside(),
                        Section::make('Đổi mật khẩu')
                            ->description(__('Để lại trống nếu không muốn thay đổi mật khẩu'))
                            ->schema([
                                $this->getPasswordFormComponent(),
                                $this->getPasswordConfirmationFormComponent(),
                            ])
                            ->aside(),
                    ])
                    ->operation('edit')
                    ->model($this->getUser())
                    ->statePath('data')
                    ->inlineLabel(! static::isSimple()),
            ),
        ];
    }

    protected function getNameFormComponent(): Component
    {
        return TextInput::make('name')
            ->label(__('Tên người dùng'))
            ->required()
            ->maxLength(255)
            ->autofocus();
    }

    protected function getEmailFormComponent(): Component
    {
        return TextInput::make('email')
            ->label(__('Địa chỉ email'))
            ->email()
            ->required()
            ->maxLength(255)
            ->unique(ignoreRecord: true)
            ->validationMessages([
                'unique' => 'Email người dùng này đã tồn tại.',
            ]);
    }

    protected function getPasswordFormComponent(): Component
    {
        return TextInput::make('password')
            ->label(__('Mật khẩu mới'))
            ->password()
            ->revealable(filament()->arePasswordsRevealable())
            ->rule(Password::default())
            ->regex('/^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/')
            ->validationMessages([
                'regex' => 'Mật khẩu phải có ít nhất 8 ký tự, bao gồm chữ hoa, số và ký tự đặc biệt.',
            ])
            ->autocomplete('new-password')
            ->dehydrated(fn ($state): bool => filled($state))
            ->dehydrateStateUsing(fn ($state): string => Hash::make($state))
            ->live(debounce: 500)
            ->same('passwordConfirmation');
    }

    protected function getPasswordConfirmationFormComponent(): Component
    {
        return TextInput::make('passwordConfirmation')
            ->label(__('Xác nhận mật khẩu mới'))
            ->password()
            ->revealable(filament()->arePasswordsRevealable())
            ->required()
            ->visible(fn (Get $get): bool => filled($get('password')))
            ->dehydrated(false);
    }

    protected function getBirthFormComponent(): Component
    {
        return DatePicker::make('Birth')
            ->label(__('Ngày sinh'))
            ->date('d/m/Y');
    }

    protected function getPhoneFormComponent(): Component
    {
        return TextInput::make('Phone')
            ->label(__('Số điện thoại'))
            ->tel();
    }

    protected function getAddressFormComponent(): Component
    {
        return Textarea::make('Address')
            ->label(__('Địa chỉ'));
    }

    protected function handleRecordUpdate(Model $record, array $data): Model
    {
        $record->forceFill([
            'last_renew_password_at' => now(),
        ]);
        $record->update($data);

        return $record;
    }
}
