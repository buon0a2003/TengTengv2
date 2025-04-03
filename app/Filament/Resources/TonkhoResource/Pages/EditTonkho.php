<?php

namespace App\Filament\Resources\TonkhoResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\TonkhoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTonkho extends EditAndRedirectToIndex
{
    protected static string $resource = TonkhoResource::class;
    protected static ?string $title = 'Sửa thông tin tồn kho';

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
