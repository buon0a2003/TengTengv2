<?php

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\Resources\PhieuXuatResource;
use App\Models\chitietphieuxuat;
use App\Models\tonkho;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\Facades\Log;
use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Model;

class CreatePhieuXuat extends CreateRecord
{

//    protected static bool $canCreateAnother = true;

    protected static string $resource = PhieuXuatResource::class;

    protected function handleRecordCreation(array $data): Model
    {

        $record = static::getModel()::create($data);



//        if (!empty($data['chitietphietxuat']['matonkho'])) {
//            $selectedIds = $data['chitietphietxuat']['matonkho'];
//            $soLuong = $data['chitietphietxuat']['soluong'];
//
//            $tonKhoItems = TonKho::whereIn('id', $selectedIds)->get();
//
//            foreach ($tonKhoItems as $tonKhoItem) {
//                $chitietphieuxuat = new chitietphieuxuat();
//                $chitietphieuxuat->phieuxuat_id = $record->id;
//                $chitietphieuxuat->vatu_id = $tonKhoItem->vatu_id;
//                $chitietphieuxuat->SoLuong = $soLuong[`$tonKhoItems->id`];
//                $chitietphieuxuat->tonkho_id = $tonKhoItems->id;
//
//            }
//            foreach ($tonKhoItems as $item) {
//                $record->chiTietPhieuXuat()->create([
//                    'ton_kho_id' => $item->id,
//                    'so_luong_xuat' => $data['chitietphietxuat']['soluong'][$item->id] ?? 0,
//                ]);
//            }
//        }



        return $record;
    }

    public function create(bool $another = false): void
    {
        $formData = $this->form->getState(); // Lấy dữ liệu từ form

//        $tonKhoItems = TonKho::whereIn('id', $selectedIds = $this->form->getState()['chitietphietxuat']['matonkho'])->get();

        $selectedIds = $formData['chitietphietxuat']['matonkho'];
        $soLuong = $formData['chitietphietxuat']['soluong'];

        $tonKhoItems = TonKho::whereIn('id', $selectedIds)->get();

        $datas = [];


        foreach ($tonKhoItems as $tonKhoItem) {
            $chitietphieuxuat = new chitietphieuxuat();
            $chitietphieuxuat->phieuxuat_id = $formData['id'];
            $chitietphieuxuat->vattu_id = $tonKhoItem['vattu_id'];
            $chitietphieuxuat->tonkhoid = $tonKhoItem['id'];
            $chitietphieuxuat->SoLuong = $soLuong[($tonKhoItem['id'])];
            $datas[] = $chitietphieuxuat;
        }

        Notification::make()
            ->title('Thông tin đã nhập')
            ->body('Dữ liệu: ' . json_encode(($datas), JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE))
//            ->body('Dữ liệu: ' . implode(" ", $tonKhoItems))
//            ->body('Dữ liệu: ' . gettype($soLuong[intval($tonKhoItem['id'])]))
            ->send();
    }
}
