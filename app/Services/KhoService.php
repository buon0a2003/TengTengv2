<?php

declare(strict_types=1);

namespace App\Services;

use App\Models\chitietphieunhap;
use App\Models\chitietphieuxuat;
use App\Models\phieunhap;
use App\Models\phieuxuat;
use App\Models\tonkho;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;

class KhoService
{
    public function duyetPhieuNhap(phieunhap $phieunhap): array
    {
        return DB::transaction(function () use ($phieunhap) {
            $chiTietRecords = chitietphieunhap::with(['vattu', 'vitri'])
                ->where('phieunhap_id', $phieunhap->id)
                ->get();

            if ($chiTietRecords->isEmpty()) {
                return ['success' => false, 'message' => 'Chưa có dữ liệu nhập kho!'];
            }

            if (!$chiTietRecords->every(fn($item) => $item->SoLuong > 0)) {
                return ['success' => false, 'message' => 'Số lượng nhập phải lớn hơn 0!'];
            }

            if (!$chiTietRecords->every(fn($item) => !is_null($item->vitri_id))) {
                return ['success' => false, 'message' => 'Chưa cập nhật vị trí cho dữ liệu!'];
            }

            $this->capNhatTonKho($chiTietRecords, $phieunhap->kho_id);

            $phieunhap->update(['TrangThai' => 1]);

            return ['success' => true, 'message' => 'Đã duyệt phiếu nhập & update tồn kho!'];
        });
    }

    public function duyetPhieuXuat(phieuxuat $phieuxuat): array
    {
        return DB::transaction(function () use ($phieuxuat) {
            $chiTietRecords = chitietphieuxuat::with('tonkho')
                ->where('phieuxuat_id', $phieuxuat->id)
                ->get();

            if ($chiTietRecords->isEmpty()) {
                return ['success' => false, 'message' => 'Phiếu xuất không có vật tư nào!'];
            }

            if ($chiTietRecords->contains(fn($item) => $item->SoLuong <= 0)) {
                return ['success' => false, 'message' => 'Tất cả vật tư phải có số lượng lớn hơn 0!'];
            }

            foreach ($chiTietRecords as $item) {
                $tonkho = $item->tonkho;
                if (!$tonkho || $tonkho->SoLuong < $item->SoLuong) {
                    return ['success' => false, 'message' => 'Không tìm thấy tồn kho hoặc số lượng không đủ!'];
                }
            }

            foreach ($chiTietRecords as $item) {
                $tonkho = $item->tonkho;
                $tonkho->update([
                    'SoLuong' => $tonkho->SoLuong - $item->SoLuong,
                    'NgayCapNhat' => now(),
                ]);
            }

            $phieuxuat->update(['TrangThai' => 1]);

            return ['success' => true, 'message' => 'Đã duyệt phiếu xuất & update tồn kho!'];
        });
    }

    private function capNhatTonKho(Collection $chiTietRecords, int $khoId): void
    {
        $tonkhoUpdates = [];
        $tonkhoCreates = [];

        foreach ($chiTietRecords as $record) {
            $existingTonkho = tonkho::where('vattu_id', $record->vattu_id)
                ->where('vitri_id', $record->vitri_id)
                ->first();

            if ($existingTonkho) {
                $tonkhoUpdates[] = [
                    'id' => $existingTonkho->id,
                    'SoLuong' => $existingTonkho->SoLuong + $record->SoLuong,
                ];
            } else {
                $tonkhoCreates[] = [
                    'vattu_id' => $record->vattu_id,
                    'SoLuong' => $record->SoLuong,
                    'kho_id' => $khoId,
                    'vitri_id' => $record->vitri_id,
                    'NgayCapNhat' => now(),
                    'created_at' => now(),
                    'updated_at' => now(),
                ];
            }
        }

        foreach ($tonkhoUpdates as $update) {
            tonkho::where('id', $update['id'])->update([
                'SoLuong' => $update['SoLuong'],
                'NgayCapNhat' => now(),
                'updated_at' => now(),
            ]);
        }

        if (!empty($tonkhoCreates)) {
            tonkho::insert($tonkhoCreates);
        }
    }
}
