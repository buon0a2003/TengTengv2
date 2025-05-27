<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuDieuChuyenResource\Pages;

use App\Filament\CreateAndRedirectToIndex;
use App\Filament\Resources\PhieuDieuChuyenResource;
use App\Models\chitietphieudieuchuyen;
use Filament\Actions;
use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Model;
use Livewire\Attributes\On;

class CreatePhieuDieuChuyen extends CreateAndRedirectToIndex
{
    protected static string $resource = PhieuDieuChuyenResource::class;

    protected static ?string $title = 'Tạo mới';

    protected static ?string $breadcrumb = 'Tạo mới';

    #[On('tonkhoSelected')]
    public function handleTonkhoSelected($record): void
    {
        $state = $this->form->getRawState();
        if (empty($state['MaKhoDich'])) {
            Notification::make()
                ->title('Thông báo')
                ->body('Vui lòng chọn kho đích trước khi thêm vật tư.')
                ->warning()
                ->send();

            return;
        }

        foreach ($state['dsvattudieuhuyen'] as $item) {
            if ($item['tonkho_id'] == $record['tonkho_id']) {
                Notification::make()
                    ->title('Thông báo')
                    ->body('Vật tư đã tồn tại trong danh sách điều chuyển.')
                    ->warning()
                    ->send();

                return;
            }
        }

        $state['dsvattudieuhuyen'][] = [
            'vattu_id' => $record['vattu_id'],
            'tonkho_id' => $record['tonkho_id'],
            'TenVT' => $record['TenVT'],
            'soluongkhadung' => $record['soluongkhadung'],
            'kho_id' => $record['kho_id'],
            'soluong' => 0,
            'vitri_id' => $record['vitri_id'],
        ];

        $this->form->fill($state);
    }

    protected function handleRecordCreation(array $data): Model
    {
        $data['TrangThai'] = $data['TrangThai'] ?? 0;

        // dd($data);

        $record = static::getModel()::create($data);

        foreach ($data['dsvattudieuhuyen'] as $i) {
            $chitietphieudieuchuyen = new chitietphieudieuchuyen();
            $chitietphieudieuchuyen->tonkho_id = $i['tonkho_id'];
            $chitietphieudieuchuyen->vattu_id = $i['vattu_id'];
            $chitietphieudieuchuyen->SoLuong = $i['soluong'];
            $chitietphieudieuchuyen->GhiChu = $i['ghichu'] ?? null;
            $chitietphieudieuchuyen->vitri_dich_id = $i['vitri_dich_id'];
            $chitietphieudieuchuyen->phieudieuchuyen_id = $record->id;
            $chitietphieudieuchuyen->save();
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
