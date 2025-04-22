<?php

declare(strict_types=1);

namespace App\Filament\Auth;

use Filament\Forms\Components\Component;
use Filament\Forms\Components\TextInput;
use Filament\Pages\SimplePage;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules\Password as PasswordRule;

class CustomRenewPassword extends SimplePage
{
    protected static string $view = 'filament-renew-password::pages.auth.renew-password';

    protected function getPasswordFormComponent(): Component
    {
        return TextInput::make('password')
            ->label(__('filament-renew-password::renew-password.form.password.label'))
            ->helperText(trans()->has('filament-renew-password::renew-password.form.password.helps') ? __('filament-renew-password::renew-password.form.password.helps') : null)
            ->password()
            ->revealable(filament()->arePasswordsRevealable())
            ->dehydrateStateUsing(fn (string $state): string => Hash::make($state))
            ->regex('/^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/')
            ->validationMessages([
                'regex' => 'Mật khẩu phải có ít nhất 8 ký tự, bao gồm chữ hoa, số và ký tự đặc biệt.',
            ])
            ->required()
            ->rule(PasswordRule::default())
            ->different('currentPassword')
            ->same('passwordConfirmation');
    }
}
