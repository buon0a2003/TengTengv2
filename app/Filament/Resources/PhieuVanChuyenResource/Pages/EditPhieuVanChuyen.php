<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuVanChuyenResource\Pages;

use App\Filament\EditAndRedirectToIndex;
use App\Filament\Resources\PhieuVanChuyenResource;
use App\Models\taixe;
use App\Models\xetai;
use Filament\Actions;
use Livewire\Attributes\On;

class EditPhieuVanChuyen extends EditAndRedirectToIndex
{
    protected static string $resource = PhieuVanChuyenResource::class;

    protected static ?string $title = 'Sửa phiếu vận chuyển';

    protected static ?string $breadcrumb = 'Sửa';

    #[On('xetaiSelected')]
    public function xetaiSelectedhandle($record): void
    {
        // dd($record);
        $state = $this->form->getRawState();

        $state['xetai_id'] = $record['xetai_id'];
        $state['Bienso'] = $record['BienSo'];

        $this->form->fill($state);
    }

    #[On('taixeSelected')]
    public function taixeSelectedhandle($record): void
    {
        // dd($record);
        $state = $this->form->getRawState();

        $state['taixe_id'] = $record['taixe_id'];
        $state['tentaixe'] = $record['tentaixe'];

        $this->form->fill($state);
    }

    #[On('phieuxuatSelected')]
    public function phieuxuatSelectedhandle($record): void
    {
        // dd($record);
        $state = $this->form->getRawState();

        $state['phieuxuat_id'] = $record['phieuxuat_id'];

        $this->form->fill($state);
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    } 

    protected function mutateFormDataBeforeFill(array $data): array
    {

        $xetai = xetai::find($data['xetai_id']);
        $taixe = taixe::find($data['taixe_id']);
        if ($xetai && $taixe) {
            $data['Bienso'] = $xetai->BienSo;
            $data['tentaixe'] = $taixe->TenTaiXe;
        }

        return $data;
    }
}
