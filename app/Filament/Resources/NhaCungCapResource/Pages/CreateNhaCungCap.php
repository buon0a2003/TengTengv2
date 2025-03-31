<?php

declare(strict_types=1);

namespace App\Filament\Resources\NhaCungCapResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\NhaCungCapResource;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class CreateNhaCungCap extends CreateAndRedirectToIndex
{
    protected static string $resource = NhaCungCapResource::class;

    protected static ?string $title = 'Tạo mới';

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo mới nhà cung cấp')
            ->body('Đã tạo thành công.');
    }

    protected function handleRecordCreation(array $data): Model
    {

//        DB::table('dummy')->insert([
//            'id' => 123,
//        ]);
        return static::getModel()::create($data);
    }

    protected function getCreateFormAction(): \Filament\Actions\Action
    {
        return parent::getCreateFormAction()
            ->label('Tạo mới')
            ->icon('heroicon-s-plus');
    }
}
