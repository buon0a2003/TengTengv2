<?php

//declare(strict_types=1);

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\Resources\PhieuXuatResource;
use App\Models\chitietphieuxuat;
use App\Models\Phieuxuat;
use App\Models\tonkho;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\Facades\Log;
use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Model;

class CreatePhieuXuat extends CreateRecord
{

    protected static string $resource = PhieuXuatResource::class;

    protected function handleRecordCreation(array $data): Model
    {

        $record = static::getModel()::create($data);

//        $selectedIds = $data['chitietphietxuat']['matonkho'];
//        $soLuong = $data['chitietphietxuat']['soluong'];
//
//        $tonKhoItems = TonKho::whereIn('id', $selectedIds)->get();
//
////        $phieuxuat = new phieuxuat();
////        $phieuxuat->id =$data['id'] ;
////        $phieuxuat->NgayXuat = $data['NgayXuat'];
////        $phieuxuat->user_id = $data['user_id'];
////        $phieuxuat->LyDo = $data['LyDo'];
////        $phieuxuat->khachhang_id = $data['khachhang_id'] ?? null;
////        $phieuxuat->GhiChu = $data['GhiChu'];
////        $phieuxuat->TrangThai = $data['TrangThai'] ?? null;
////        $phieuxuat->kho_id = $data['kho_id'];
////        $phieuxuat->save();
//
//
//        foreach ($tonKhoItems as $tonKhoItem) {
//
//            $chitietphieuxuat = new chitietphieuxuat();
//            $tonkho_id = $tonKhoItem['id'];
//            $chitietphieuxuat->phieuxuat_id = $data['id'] ;
//            $chitietphieuxuat->vattu_id = $tonKhoItem['vattu_id'];
//            $chitietphieuxuat->tonkho_id = $tonKhoItem['id'];
//            $chitietphieuxuat->SoLuong = $soLuong[ $tonKhoItem['id']];
//            $chitietphieuxuat->save();
//        }

        return $record;
    }

    public function create(bool $another = false): void
    {
        $datas = [];
        $formData = $this->form->getState();

        $selectedIds = $formData['chitietphietxuat']['matonkho'];
        $soLuong = $formData['chitietphietxuat']['soluong'];

        $tonKhoItems = TonKho::whereIn('id', $selectedIds)->get();

        $phieuxuat = new phieuxuat();
        $phieuxuat->id =$formData['id'] ;
        $phieuxuat->NgayXuat = $formData['NgayXuat'];
        $phieuxuat->user_id = $formData['user_id'] ?? null;
        $phieuxuat->LyDo = $formData['LyDo'];
        $phieuxuat->khachhang_id = $formData['khachhang_id'] ?? null;
        $phieuxuat->GhiChu = $formData['GhiChu'];
        $phieuxuat->TrangThai = $formData['TrangThai'] ?? null;
        $phieuxuat->kho_id = $formData['kho_id'];
        $phieuxuat->save();


        foreach ($tonKhoItems as $tonKhoItem) {

            $chitietphieuxuat = new chitietphieuxuat();
            $tonkho_id = $tonKhoItem['id'];
            $chitietphieuxuat->phieuxuat_id = $formData['id'] ;
            $chitietphieuxuat->vattu_id = $tonKhoItem['vattu_id'];
            $chitietphieuxuat->tonkho_id = $tonKhoItem['id'];
            $chitietphieuxuat->SoLuong = $soLuong[$tonkho_id];
            $chitietphieuxuat->save();
            $datas[] = $chitietphieuxuat;
        }

//        Notification::make()
//            ->title('Thông tin đã nhập')
//            ->body('Dữ liệu: ' . json_encode(($soLuong), JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE))
//            ->send();

    }

    protected function getCreateFormAction(): Actions\Action
    {
        return parent::getCreateFormAction()
            ->label('Tạo mới')
            ->icon('heroicon-s-plus');
    }
}
