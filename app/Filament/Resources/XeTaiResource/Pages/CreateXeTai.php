<?php

namespace App\Filament\Resources\XeTaiResource\Pages;

use App\Filament\Resources\XeTaiResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateXeTai extends CreateRecord
{
    protected static string $resource = XeTaiResource::class;

    protected static ?string $title = 'Tạo mới';

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $data['TrangThai'] = 1;
        return $data;
    }

    protected function getCreateFormAction(): \Filament\Actions\Action
    {
        return parent::getCreateFormAction()
            ->label('Tạo mới')
            ->icon('heroicon-s-plus');
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
