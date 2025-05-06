<x-filament::page>
    <div class="mb-6 space-y-4">
        {{ $this->form }}

        <h2 class="text-lg font-bold text-gray-800">
            Thống kê Xuất Nhập Tồn tháng {{ str_pad($month, 2, '0', STR_PAD_LEFT) }}/{{ $year }}
        </h2>
    </div>

    {{-- Xóa giới hạn chiều rộng & scroll --}}
    <div class="w-full">
        <table class="w-full border border-gray-300 text-sm table-auto">
            <thead class="bg-gray-100 text-gray-700 text-center">
            <tr>
                <th class="border px-3 py-2">Mã vật tư</th>
                <th class="border px-3 py-2 text-left">Tên vật tư</th>
                <th class="border px-3 py-2 text-left">Đơn vị tính</th>
                <th class="border px-3 py-2 text-right">Tồn đầu</th>
                <th class="border px-3 py-2 text-right">Nhập</th>
                <th class="border px-3 py-2 text-right">Xuất</th>
                <th class="border px-3 py-2 text-right">Tồn cuối</th>
            </tr>
            </thead>

            <tbody>
            {{-- Nhóm thành phẩm --}}
            <tr class="bg-blue-50 font-semibold text-left">
                <td colspan="6" class="px-3 py-2">🔹 Nhóm thành phẩm</td>
            </tr>
            @foreach ($data as $row)
                @if ($row['LaTP'])
                    <tr class="hover:bg-gray-50">
                        <td class="border px-3 py-1">{{ $row['MaVT'] }}</td>
                        <td class="border px-3 py-1">{{ $row['TenVT'] }}</td>
                        <td class="border px-3 py-1">{{ $row['DonViTinh'] }}</td>
                        <td class="border px-3 py-1 text-right">{{ number_format($row['opening']) }}</td>
                        <td class="border px-3 py-1 text-right">{{ number_format($row['import']) }}</td>
                        <td class="border px-3 py-1 text-right">{{ number_format($row['export']) }}</td>
                        <td class="border px-3 py-1 text-right">{{ number_format($row['closing']) }}</td>
                    </tr>
                @endif
            @endforeach

            <tr><td colspan="6" class="py-2"></td></tr>

            {{-- Nhóm nguyên vật liệu --}}
            <tr class="bg-blue-50 font-semibold text-left">
                <td colspan="6" class="px-3 py-2">🔹 Nhóm nguyên vật liệu</td>
            </tr>
            @foreach ($data as $row)
                @if (! $row['LaTP'])
                    <tr class="hover:bg-gray-50">
                        <td class="border px-3 py-1">{{ $row['MaVT'] }}</td>
                        <td class="border px-3 py-1">{{ $row['TenVT'] }}</td>
                        <td class="border px-3 py-1">{{ $row['DonViTinh'] }}</td>
                        <td class="border px-3 py-1 text-right">{{ number_format($row['opening']) }}</td>
                        <td class="border px-3 py-1 text-right">{{ number_format($row['import']) }}</td>
                        <td class="border px-3 py-1 text-right">{{ number_format($row['export']) }}</td>
                        <td class="border px-3 py-1 text-right">{{ number_format($row['closing']) }}</td>
                    </tr>
                @endif
            @endforeach
            </tbody>
        </table>
    </div>
</x-filament::page>
