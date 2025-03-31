<?php

namespace App\Filament\Auth;
use Exception;
use Filament\Actions\Action;
use Filament\Facades\Filament;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Split;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Get;
use Filament\Pages\Auth\EditProfile;
use Filament\Forms\Components\Component;
use Filament\Forms\Components\TextInput;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Js;
use Illuminate\Validation\Rules\Password;


class CustomProfile extends EditProfile
{
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
                                ->aside()
                    ])
                    ->operation('edit')
                    ->model($this->getUser())
                    ->statePath('data')
                    ->inlineLabel(! static::isSimple()),
            ),
        ];
    }

    public static function isSimple(): bool
    {
        return false;
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
            ->unique(ignoreRecord: true);
    }
    protected function getPasswordFormComponent(): Component
    {
        return TextInput::make('password')
            ->label(__('Mật khẩu mới'))
            ->password()
            ->revealable(filament()->arePasswordsRevealable())
            ->rule(Password::default())
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

}
