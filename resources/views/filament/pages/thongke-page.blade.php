<x-filament::page>
    <h2 class="text-xl font-bold mb-4">Thống kê Xuất Nhập Tồn tháng {{ now()->format('m/Y') }}</h2>

    <table class="min-w-full border text-sm">
        <thead class="bg-gray-100">
        <tr>
            <th class="border px-2 py-1">Mã vật tư</th>
            <th class="border px-2 py-1">Tên vật tư</th>
            <th class="border px-2 py-1 text-right">Tồn đầu</th>
            <th class="border px-2 py-1 text-right">Nhập</th>
            <th class="border px-2 py-1 text-right">Xuất</th>
            <th class="border px-2 py-1 text-right">Tồn cuối</th>
        </tr>
        </thead>
        <tbody>
        {{-- Nhóm thành phẩm --}}
        <tr class="bg-gray-200 font-semibold">
            <td colspan="6" class="px-2 py-1">Nhóm thành phẩm</td>
        </tr>
        @foreach ($data as $row)
            @if ($row['LaTP'])
                <tr>
                    <td class="border px-2">{{ $row['MaVT'] }}</td>
                    <td class="border px-2">{{ $row['TenVT'] }}</td>
                    <td class="border px-2 text-right">{{ number_format($row['opening']) }}</td>
                    <td class="border px-2 text-right">{{ number_format($row['import']) }}</td>
                    <td class="border px-2 text-right">{{ number_format($row['export']) }}</td>
                    <td class="border px-2 text-right">{{ number_format($row['closing']) }}</td>
                </tr>
            @endif
        @endforeach

        <tr><td colspan="6" style="height: 15px;"></td></tr>
        <tr><td colspan="6" style="height: 15px;"></td></tr>

        {{-- Nhóm nguyên vật liệu --}}
        <tr class="bg-gray-200 font-semibold">
            <td colspan="6" class="px-2 py-1">Nhóm nguyên vật liệu</td>
        </tr>
        @foreach ($data as $row)
            @if (! $row['LaTP'])
                <tr>
                    <td class="border px-2">{{ $row['MaVT'] }}</td>
                    <td class="border px-2">{{ $row['TenVT'] }}</td>
                    <td class="border px-2 text-right">{{ number_format($row['opening']) }}</td>
                    <td class="border px-2 text-right">{{ number_format($row['import']) }}</td>
                    <td class="border px-2 text-right">{{ number_format($row['export']) }}</td>
                    <td class="border px-2 text-right">{{ number_format($row['closing']) }}</td>
                </tr>
            @endif
        @endforeach
        </tbody>
    </table>
</x-filament::page>
