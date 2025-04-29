<?php

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use Filament\Actions;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Blade;
use Filament\Resources\Pages\ViewRecord;
use App\Filament\Resources\PhieuNhapResource;

class ViewPhieuNhap extends ViewRecord
{
    protected static string $resource = PhieuNhapResource::class;

    protected static ?string $title = 'Xem phiếu nhập';
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

                    $chitietphieunhap = $record->chitietphieunhap->map(function ($item) {
                        return [
                            'TenVT' => $item->vattu->TenVT,
                            'TenDVT' => $item->vattu->donvitinh->TenDVT,
                            'MaSo' => $item->vattu->MaVT,
                            'SoLuong' => $item->SoLuong,
                        ];
                    });

                    $thongtinphieunhap = [
                        'id' => $record->id ?? 'n/a',
                        'ngaynhap' => $record->NgayNhap ?? 'n/a',
                        'username' => $record->user->name ?? 'n/a',
                        'nhacungcap' => $record->nhacungcap->TenNCC ?? 'Đại phát',
                        'kho' => $record->kho->TenKho ?? 'n/a',
                        'lydo' => match ($record->LyDo) {
                            0 => 'Nhập thành phẩm',
                            1 => 'Nhập nguyên vật liệu',
                            2 => 'Hàng huỷ',
                            default => 'n/a'
                        },
                        'ghichu' => $record->GhiChu ?? '',
                    ];

                    // dd($chitietphieunhap);

                    return response()->streamDownload(function () use ($thongtinphieunhap, $chitietphieunhap) {
                        echo Pdf::loadHTML(
                            Blade::render(
                                'phieunhap',
                                ['record' => $thongtinphieunhap, 'chitietphieunhap' => $chitietphieunhap]
                            )
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
