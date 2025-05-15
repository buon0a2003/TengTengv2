<x-filament::page>
    <div class="mb-6 space-y-4">
        {{ $this->form }}

        <h2 class="text-lg font-bold text-gray-800">
            Thống kê Xuất Nhập Tồn tháng {{ str_pad($month, 2, '0', STR_PAD_LEFT) }}/{{ $year }}
        </h2>
    </div>

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
            @php
                $tp = collect($this->data)->where('LaTP', true);
                $tpSum = [
                    'opening' => $tp->sum('opening'),
                    'import' => $tp->sum('import'),
                    'export' => $tp->sum('export'),
                    'closing' => $tp->sum('closing'),
                ];
            @endphp

            <tr class="bg-blue-50 font-semibold text-left">
                <td colspan="3" class="px-3 py-2">🔹 Nhóm thành phẩm</td>
                <td class="px-3 py-2 text-right">{{ number_format($tpSum['opening']) }}</td>
                <td class="px-3 py-2 text-right">{{ number_format($tpSum['import']) }}</td>
                <td class="px-3 py-2 text-right">{{ number_format($tpSum['export']) }}</td>
                <td class="px-3 py-2 text-right">{{ number_format($tpSum['closing']) }}</td>
            </tr>
            @foreach ($tp as $row)
                <tr class="hover:bg-gray-50">
                    <td class="border px-3 py-1">{{ $row['MaVT'] }}</td>
                    <td class="border px-3 py-1">{{ $row['TenVT'] }}</td>
                    <td class="border px-3 py-1">{{ $row['DonViTinh'] }}</td>
                    <td class="border px-3 py-1 text-right">{{ number_format($row['opening']) }}</td>
                    <td class="border px-3 py-1 text-right">{{ number_format($row['import']) }}</td>
                    <td class="border px-3 py-1 text-right">{{ number_format($row['export']) }}</td>
                    <td class="border px-3 py-1 text-right">{{ number_format($row['closing']) }}</td>
                </tr>
            @endforeach

            <tr><td colspan="7" class="py-2"></td></tr>

            {{-- Nhóm nguyên vật liệu --}}
            @php
                $vl = collect($this->data)->where('LaTP', false);
                $vlSum = [
                    'opening' => $vl->sum('opening'),
                    'import' => $vl->sum('import'),
                    'export' => $vl->sum('export'),
                    'closing' => $vl->sum('closing'),
                ];
            @endphp

            <tr class="bg-blue-50 font-semibold text-left">
                <td colspan="3" class="px-3 py-2">🔹 Nhóm nguyên vật liệu</td>
                <td class="px-3 py-2 text-right">{{ number_format($vlSum['opening']) }}</td>
                <td class="px-3 py-2 text-right">{{ number_format($vlSum['import']) }}</td>
                <td class="px-3 py-2 text-right">{{ number_format($vlSum['export']) }}</td>
                <td class="px-3 py-2 text-right">{{ number_format($vlSum['closing']) }}</td>
            </tr>
            @foreach ($vl as $row)
                <tr class="hover:bg-gray-50">
                    <td class="border px-3 py-1">{{ $row['MaVT'] }}</td>
                    <td class="border px-3 py-1">{{ $row['TenVT'] }}</td>
                    <td class="border px-3 py-1">{{ $row['DonViTinh'] }}</td>
                    <td class="border px-3 py-1 text-right">{{ number_format($row['opening']) }}</td>
                    <td class="border px-3 py-1 text-right">{{ number_format($row['import']) }}</td>
                    <td class="border px-3 py-1 text-right">{{ number_format($row['export']) }}</td>
                    <td class="border px-3 py-1 text-right">{{ number_format($row['closing']) }}</td>
                </tr>
            @endforeach

            {{-- Tổng cộng tất cả --}}
            @php
                $total = [
                    'opening' => $tpSum['opening'] + $vlSum['opening'],
                    'import' => $tpSum['import'] + $vlSum['import'],
                    'export' => $tpSum['export'] + $vlSum['export'],
                    'closing' => $tpSum['closing'] + $vlSum['closing'],
                ];
            @endphp
            <tr class="bg-green-100 font-bold text-right">
                <td colspan="3" class="px-3 py-2 text-left">Tổng cộng</td>
                <td class="border px-3 py-1">{{ number_format($total['opening']) }}</td>
                <td class="border px-3 py-1">{{ number_format($total['import']) }}</td>
                <td class="border px-3 py-1">{{ number_format($total['export']) }}</td>
                <td class="border px-3 py-1">{{ number_format($total['closing']) }}</td>
            </tr>
            </tbody>
        </table>
    </div>
</x-filament::page>
