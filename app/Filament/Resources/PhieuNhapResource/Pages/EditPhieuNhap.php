<?php

declare(strict_types=1);

namespace App\Filament\Resources\PhieuNhapResource\Pages;

use Filament\Actions;
use App\Models\phieunhap;
use Filament\Actions\Action;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\chitietphieunhap;
use Filament\Actions\DeleteAction;
use Illuminate\Support\Facades\Blade;
use App\Filament\EditAndRedirectToIndex;
use Filament\Notifications\Notification;
use App\Filament\Resources\PhieuNhapResource;

class EditPhieuNhap extends EditAndRedirectToIndex
{
    protected static string $resource = PhieuNhapResource::class;

    protected static ?string $title = 'Sửa phiếu nhập';
    protected static ?string $breadcrumb = 'Sửa';

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
                ->hidden(fn($record): bool => $record->TrangThai == 1 || $record->TrangThai == 2)
                ->requiresConfirmation()
                ->modalDescription('Xoá phiếu nhập sẽ xoá tất cả thông tin kèm theo. Bạn chắc chắn chưa?')
                ->action(
                    function ($data, $record): void {
                        chitietphieunhap::where('phieunhap_id', $record->id)->delete();

                        phieunhap::destroy($record->id);

                        Notification::make()
                            ->title('Đã xoá phiếu nhập thành công!')
                            ->success()
                            ->send();

                        redirect()->to(route('filament.admin.resources.phieunhap.index'));
                    }
                ),

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
                            Blade::render('phieunhap', ['record' => $thongtinphieunhap, 'chitietphieunhap' => $chitietphieunhap])
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
