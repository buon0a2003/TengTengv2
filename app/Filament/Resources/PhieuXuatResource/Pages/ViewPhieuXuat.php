<?php

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use Filament\Actions;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Blade;
use Filament\Resources\Pages\ViewRecord;
use App\Filament\Resources\PhieuXuatResource;

class ViewPhieuXuat extends ViewRecord
{
    protected static string $resource = PhieuXuatResource::class;
    protected static ?string $title = 'Xem phiếu xuất';
    protected static ?string $breadcrumb = 'Xem';

    public function hasCombinedRelationManagerTabsWithContent(): bool
    {
        return true;
    }

    public function getContentTabLabel(): ?string
    {
        return 'Xem';
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('pdf')
                ->openUrlInNewTab()
                ->action(function ($record) {

                    $chitietphieuxuat = $record->chitietphieuxuat->map(function ($item) {
                        return [
                            'TenVT' => $item->vattu->TenVT,
                            'TenDVT' => $item->vattu->donvitinh->TenDVT,
                            'MaSo' => $item->vattu->MaVT,
                            'SoLuong' => $item->SoLuong,
                        ];
                    });

                    $thongtinphieuxuat = [
                        'id' => $record->id ?? 'n/a',
                        'ngayxuat' => $record->NgayXuat ?? 'n/a',
                        'username' => $record->user->name ?? 'n/a',
                        'khachhang' => $record->khachhang->TenKH ?? 'Đại phát',
                        'diachi' => $record->khachhang->DiaChi ?? 'Đại phát',
                        'kho' => $record->kho->TenKho ?? 'n/a',
                        'lydo' => $record->LyDo == 1 ? 'Xuất nguyên vật liệu' : 'Xuất bán',
                        'ghichu' => $record->GhiChu ?? '',
                    ];

                    // dd($chitietphieuxuat);

                    return response()->streamDownload(function () use ($thongtinphieuxuat, $chitietphieuxuat) {
                        echo Pdf::loadHTML(
                            Blade::render('phieuxuat', ['record' => $thongtinphieuxuat, 'chitietphieuxuat' => $chitietphieuxuat])
                        )->stream();
                    }, $record->id . '.pdf');
                })
                // ->action(fn($record) => dd($record->chitietphieunhap))
                ->hidden(fn($record): bool => ! $record->TrangThai == 1)
                ->label('In phiếu')
                ->icon('heroicon-o-printer')
                ->color('primary'),
        ];
    }
}
