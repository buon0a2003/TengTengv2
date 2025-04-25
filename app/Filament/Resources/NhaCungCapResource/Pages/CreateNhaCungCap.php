<?php

declare(strict_types=1);

namespace App\Filament\Resources\NhaCungCapResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\NhaCungCapResource;
use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class CreateNhaCungCap extends CreateAndRedirectToIndex
{
    protected static string $resource = NhaCungCapResource::class;

    protected static ?string $title = 'Tạo mới';
    protected static ?string $breadcrumb = 'Tạo mới';
    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo thành công')
            ->body('Đã tạo mới nhà cung cấp.');
    }

    protected function handleRecordCreation(array $data): Model
    {

        //        DB::table('dummy')->insert([
        //            'id' => 123,
        //        ]);
        return static::getModel()::create($data);
    }

}
