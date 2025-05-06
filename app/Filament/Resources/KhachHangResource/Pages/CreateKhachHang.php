<?php

declare(strict_types=1);

namespace App\Filament\Resources\KhachHangResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\KhachHangResource;
use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Model;

class CreateKhachHang extends CreateAndRedirectToIndex
{
    protected static string $resource = KhachHangResource::class;

    protected static ?string $title = 'Tạo mới';

    protected static ?string $breadcrumb = 'Tạo mới';

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Tạo thành công')
            ->body('Đã tạo mới khách hàng.');
    }

    protected function handleRecordCreation(array $data): Model
    {

        //        DB::table('dummy')->insert([
        //            'id' => 123,
        //        ]);
        return static::getModel()::create($data);
    }
}
