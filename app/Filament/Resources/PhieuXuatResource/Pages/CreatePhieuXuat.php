<?php

//declare(strict_types=1);

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use App\Filament\Resources\PhieuXuatResource;
use App\Models\chitietphieuxuat;
use App\Models\Phieuxuat;
use App\Models\tonkho;
use Filament\Actions;
use Illuminate\Support\Facades\Log;
use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Model;
use App\Filament\CreateAndRedirectToIndex;


class CreatePhieuXuat extends CreateAndRedirectToIndex
{

    protected static string $resource = PhieuXuatResource::class;

    protected $listeners = ['tonkhoSelected' => 'handleTonkhoSelected'];

    public function handleTonkhoSelected($record): void
    {
        $state = $this->form->getState();

        $state['dsvattuxuat'][] = [
            'vattu_id' => $record['vattu_id'],
            'tonkho_id' => $record['tonkho_id'],
            'TenVT' => $record['TenVT'],
            'soluongkhadung' => $record['soluongkhadung'],
            'kho_id' => $record['kho_id'],
            'soluong' => 0,
            'vitri_id' => $record['vitri_id'],
        ];

        $this->form->fill($state);

        // dd($record);
    }

    protected function handleRecordCreation(array $data): Model
    {

        // dd($data);
        $record = static::getModel()::create($data);

       foreach ($data['dsvattuxuat'] as $i) {

           $chitietphieuxuat = new chitietphieuxuat();

           $chitietphieuxuat->tonkho_id = $i['tonkho_id'];

           $chitietphieuxuat->vattu_id = $i['vattu_id'];
           $chitietphieuxuat->SoLuong = $i['soluong'];
           $chitietphieuxuat->GhiChu = $i['ghichu'];

           $chitietphieuxuat->phieuxuat_id = $record->id;

           $chitietphieuxuat->save();
       }

        return $record;
    }

    // public function create(bool $another = false): void
    // {
        // $datas = [];
        // $formData = $this->form->getState();

        // $selectedIds = $formData['chitietphietxuat']['matonkho'];
        // $soLuong = $formData['chitietphietxuat']['soluong'];

        // $tonKhoItems = TonKho::whereIn('id', $selectedIds)->get();

        // $phieuxuat = new phieuxuat();
        // $phieuxuat->id =$formData['id'] ;
        // $phieuxuat->NgayXuat = $formData['NgayXuat'];
        // $phieuxuat->user_id = $formData['user_id'] ?? null;
        // $phieuxuat->LyDo = $formData['LyDo'];
        // $phieuxuat->khachhang_id = $formData['khachhang_id'] ?? null;
        // $phieuxuat->GhiChu = $formData['GhiChu'];
        // $phieuxuat->TrangThai = $formData['TrangThai'] ?? null;
        // $phieuxuat->kho_id = $formData['kho_id'];
        // $phieuxuat->save();


        // foreach ($tonKhoItems as $tonKhoItem) {

        //     $chitietphieuxuat = new chitietphieuxuat();
        //     $tonkho_id = $tonKhoItem['id'];
        //     $chitietphieuxuat->phieuxuat_id = $formData['id'] ;
        //     $chitietphieuxuat->vattu_id = $tonKhoItem['vattu_id'];
        //     $chitietphieuxuat->tonkho_id = $tonKhoItem['id'];
        //     $chitietphieuxuat->SoLuong = $soLuong[$tonkho_id];
        //     $chitietphieuxuat->save();
        //     $datas[] = $chitietphieuxuat;
        // }

//        Notification::make()
//            ->title('Thông tin đã nhập')
//            ->body('Dữ liệu: ' . json_encode(($soLuong), JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE))
//            ->send();

    // }

    protected function getCreateFormAction(): Actions\Action
    {
        return parent::getCreateFormAction()
            ->label('Tạo mới')
            ->icon('heroicon-s-plus');
    }
}
