<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use App\Filament\Resources\PhieuNhapResource;
use App\Models\chitietphieunhap;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Database\Eloquent\Model;

class CreatePhieuNhap extends CreateRecord
{
    protected static string $resource = PhieuNhapResource::class;

    protected function handleRecordCreation(array $data): Model
    {

        $record = static::getModel()::create($data);

        foreach ($data['dsvattu'] as $key) {
            $chitietphieunhap = new chitietphieunhap();

            $chitietphieunhap->vattu_id = $key['vattu'];
            $chitietphieunhap->SoLuong = $key['soluong'];
            $chitietphieunhap->GhiChu = $key['ghichu'];

            $chitietphieunhap->phieunhap_id = $record->id;

            $chitietphieunhap->save();
        }

        return $record;
    }

    protected function getCreateFormAction(): Actions\Action
    {
        return parent::getCreateFormAction()
            ->label('Tạo mới')
            ->icon('heroicon-s-plus');
    }
}
