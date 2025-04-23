<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuXuatResource\Pages;

use Filament\Actions;
use App\Models\phieuxuat;
use Filament\Actions\Action;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\chitietphieuxuat;
use Filament\Actions\DeleteAction;
use Illuminate\Support\Facades\Blade;
use App\Filament\EditAndRedirectToIndex;
use Filament\Notifications\Notification;
use App\Filament\Resources\PhieuXuatResource;

class EditPhieuXuat extends EditAndRedirectToIndex
{
    protected static string $resource = PhieuXuatResource::class;

    protected static ?string $title = 'Sửa phiếu xuất';

    public function hasCombinedRelationManagerTabsWithContent(): bool
    {
        return true;
    }

    public function getContentTabLabel(): ?string
    {
        return 'Sửa';
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()
                ->hidden(fn($record): bool => $record->TrangThai === 1 || $record->TrangThai === 2)
                ->requiresConfirmation()
                ->modalDescription('Xoá phiếu xuất sẽ xoá tất cả thông tin kèm theo. Bạn chắc chắn chưa?')
                ->action(
                    function ($data, $record): void {
                        chitietphieuxuat::where('phieuxuat_id', $record->id)->delete();

                        phieuxuat::destroy($record->id);

                        Notification::make()
                            ->title('Đã xoá phiếu xuất thành công!')
                            ->success()
                            ->send();

                        redirect()->to(route('filament.admin.resources.phieuxuat.index'));
                    }

                ),
            Action::make('pdf')
                ->openUrlInNewTab()
                ->action(function ($record) {

                    $chitietphieuxuat = $record->chitietphieuxuat->map(function ($item) {
                        return [
                            'TenVT' => $item->vattu->TenVT,
                            'TenDVT' => $item->vattu->donvitinh->TenDVT,
                            'MaSo' => '',
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
