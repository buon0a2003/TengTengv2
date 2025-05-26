<x-filament::page>
    <div class="mb-6 space-y-4">
        {{ $this->form }}

        <h2 class="text-lg font-bold text-gray-800">
            Thống kê sự cố tháng {{ str_pad($month, 2, '0', STR_PAD_LEFT) }}/{{ $year }}
        </h2>
    </div>

    <div class="w-full">
        <table class="w-full border border-gray-300 text-sm table-auto">
            <thead class="bg-gray-100 text-gray-700 text-center">
            <tr>
                <th class="border px-3 py-2">Mã phiếu</th>
                <th class="border px-3 py-2">Ngày nhập</th>
                <th class="border px-3 py-2">Người tạo</th>
                <th class="border px-3 py-2">Người giám sát</th>
                <th class="border px-3 py-2">Kho</th>
                <th class="border px-3 py-2">Ghi chú</th>
            </tr>
            </thead>

            <tbody>
            @forelse ($this->data as $row)
                <tr class="hover:bg-gray-50">
                    <td class="border px-3 py-1 text-center">{{ $row['MaPhieu'] }}</td>
                    <td class="border px-3 py-1 text-center">{{ $row['NgayNhap'] }}</td>
                    <td class="border px-3 py-1 text-center">{{ $row['NguoiTao'] }}</td>
                    <td class="border px-3 py-1 text-center">{{ $row['NguoiGiamSat'] }}</td>
                    <td class="border px-3 py-1 text-center">{{ $row['Kho'] }}</td>
                    <td class="border px-3 py-1 text-center">{{ $row['GhiChu'] }}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="8" class="text-center text-gray-500 py-3">Không có dữ liệu hàng hủy trong tháng này.</td>
                </tr>
            @endforelse
            </tbody>
        </table>
    </div>
</x-filament::page>

