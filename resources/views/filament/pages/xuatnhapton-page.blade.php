<x-filament::page>
    <div class="mb-6 space-y-4">
        {{ $this->form }}
    </div>

    <div class="w-full">
        <table class="w-full border border-gray-300 dark:border-gray-700 text-sm table-auto">
            <thead class="bg-gray-100 text-gray-700 text-center dark:bg-gray-800 dark:text-gray-100">
            <tr>
                <th class="border px-3 py-2 dark:border-gray-700 dark:text-white">Mã vật tư</th>
                <th class="border px-3 py-2 text-left dark:border-gray-700 dark:text-white">Tên vật tư</th>
                <th class="border px-3 py-2 text-left dark:border-gray-700 dark:text-white">Đơn vị tính</th>
                <th class="border px-3 py-2 text-right dark:border-gray-700 dark:text-white">Tồn đầu</th>
                <th class="border px-3 py-2 text-right dark:border-gray-700 dark:text-white">Nhập</th>
                <th class="border px-3 py-2 text-right dark:border-gray-700 dark:text-white">Xuất</th>
                <th class="border px-3 py-2 text-right dark:border-gray-700 dark:text-white">Tồn cuối</th>
            </tr>
            </thead>

            <tbody>
            {{-- Nhóm thành phẩm --}}
            @php
                $tp = collect($this->data)->where('LaTP', true)->values();
                $tpSum = [
                    'opening' => $tp->sum('opening'),
                    'import' => $tp->sum('import'),
                    'export' => $tp->sum('export'),
                    'closing' => $tp->sum('closing'),
                ];
            @endphp

            <tr class="bg-blue-50 dark:bg-gray-900 font-semibold text-left">
                <td colspan="3" class="px-3 py-2 dark:text-gray-100">🔹 Nhóm thành phẩm</td>
                <td class="px-3 py-2 text-right dark:text-gray-100">{{ number_format($tpSum['opening']) }}</td>
                <td class="px-3 py-2 text-right dark:text-gray-100">{{ number_format($tpSum['import']) }}</td>
                <td class="px-3 py-2 text-right dark:text-gray-100">{{ number_format($tpSum['export']) }}</td>
                <td class="px-3 py-2 text-right dark:text-gray-100">{{ number_format($tpSum['closing']) }}</td>
            </tr>
            @foreach ($tp as $i => $row)
                <tr class="
                    {{ $i % 2 === 0 ? 'bg-gray-50 dark:bg-gray-900' : 'bg-white dark:bg-gray-800' }}
                    hover:bg-gray-200 dark:hover:bg-gray-700
                ">
                    <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ $row['MaVT'] }}</td>
                    <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ $row['TenVT'] }}</td>
                    <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ $row['DonViTinh'] }}</td>
                    <td class="border px-3 py-1 text-right dark:border-gray-700 dark:text-gray-100">{{ number_format($row['opening']) }}</td>
                    <td class="border px-3 py-1 text-right dark:border-gray-700 dark:text-gray-100">{{ number_format($row['import']) }}</td>
                    <td class="border px-3 py-1 text-right dark:border-gray-700 dark:text-gray-100">{{ number_format($row['export']) }}</td>
                    <td class="border px-3 py-1 text-right dark:border-gray-700 dark:text-gray-100">{{ number_format($row['closing']) }}</td>
                </tr>
            @endforeach

            <tr><td colspan="7" class="py-2"></td></tr>

            {{-- Nhóm nguyên vật liệu --}}
            @php
                $vl = collect($this->data)->where('LaTP', false)->values();
                $vlSum = [
                    'opening' => $vl->sum('opening'),
                    'import' => $vl->sum('import'),
                    'export' => $vl->sum('export'),
                    'closing' => $vl->sum('closing'),
                ];
            @endphp

            <tr class="bg-blue-50 dark:bg-gray-900 font-semibold text-left">
                <td colspan="3" class="px-3 py-2 dark:text-gray-100">🔹 Nhóm nguyên vật liệu</td>
                <td class="px-3 py-2 text-right dark:text-gray-100">{{ number_format($vlSum['opening']) }}</td>
                <td class="px-3 py-2 text-right dark:text-gray-100">{{ number_format($vlSum['import']) }}</td>
                <td class="px-3 py-2 text-right dark:text-gray-100">{{ number_format($vlSum['export']) }}</td>
                <td class="px-3 py-2 text-right dark:text-gray-100">{{ number_format($vlSum['closing']) }}</td>
            </tr>
            @foreach ($vl as $i => $row)
                <tr class="
                    {{ $i % 2 === 0 ? 'bg-gray-50 dark:bg-gray-900' : 'bg-white dark:bg-gray-800' }}
                    hover:bg-gray-200 dark:hover:bg-gray-700
                ">
                    <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ $row['MaVT'] }}</td>
                    <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ $row['TenVT'] }}</td>
                    <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ $row['DonViTinh'] }}</td>
                    <td class="border px-3 py-1 text-right dark:border-gray-700 dark:text-gray-100">{{ number_format($row['opening']) }}</td>
                    <td class="border px-3 py-1 text-right dark:border-gray-700 dark:text-gray-100">{{ number_format($row['import']) }}</td>
                    <td class="border px-3 py-1 text-right dark:border-gray-700 dark:text-gray-100">{{ number_format($row['export']) }}</td>
                    <td class="border px-3 py-1 text-right dark:border-gray-700 dark:text-gray-100">{{ number_format($row['closing']) }}</td>
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
            <tr class="bg-green-100 dark:bg-gray-700 font-bold text-right">
                <td colspan="3" class="px-3 py-2 text-left dark:text-gray-100">Tổng cộng</td>
                <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ number_format($total['opening']) }}</td>
                <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ number_format($total['import']) }}</td>
                <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ number_format($total['export']) }}</td>
                <td class="border px-3 py-1 dark:border-gray-700 dark:text-gray-100">{{ number_format($total['closing']) }}</td>
            </tr>
            </tbody>
        </table>
    </div>
</x-filament::page>
