<?php

declare(strict_types=1);

namespace App\Filament\Resources\DonvitinhResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\DonvitinhResource;
use Filament\Actions;

class CreateDonvitinh extends CreateAndRedirectToIndex
{
    protected static ?string $title = 'Tạo mới';
    protected static string $resource = DonvitinhResource::class;
    protected static ?string $breadcrumb = 'Tạo mới';

    protected function getCreateFormAction(): Actions\Action
    {
        return parent::getCreateFormAction()
            ->label('Tạo mới')
            ->icon('heroicon-s-plus');
    }
}
