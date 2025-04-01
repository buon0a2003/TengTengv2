{{--<x-dynamic-component--}}
{{--    :component="$getFieldWrapperView()"--}}
{{--    :field="$field"--}}
{{-->--}}

{{--    <div x-data="{ selected : {}, soluong_xuat: {} }">--}}
{{--        <table class="w-full border border-gray-300">--}}
{{--            <thead>--}}
{{--            <tr class="bg-gray-200">--}}
{{--                @foreach ($getColumns() as $column)--}}
{{--                    <th class="border px-4 py-2">{{ $column }}</th>--}}
{{--                @endforeach--}}
{{--            </tr>--}}
{{--            </thead>--}}
{{--            <tbody>--}}
{{--            @foreach ($getData() as $row)--}}
{{--                <tr class="border">--}}
{{--                    @foreach ($row as $cell)--}}
{{--                        <td class="border px-4 py-2">{!! $cell !!}</td>--}}
{{--                    @endforeach--}}
{{--                </tr>--}}
{{--            @endforeach--}}
{{--            </tbody>--}}
{{--        </table>--}}

{{--        <input type="hidden" name="soluong_items" :value="JSON.stringify(soluong_xuat)">--}}
{{--    </div>--}}
{{--</x-dynamic-component>--}}

@php
    $columns = $getColumns();
    $data = $getData();
    $statePath = $getStatePath();
@endphp
{{--<link rel="stylesheet" href="{{ asset() }}">--}}
<div x-data="{
    matonkho: {},
    soluong: {},
    selectAll: false,
    init() {
        // Khởi tạo state từ Livewire nếu có
        if (@json($getState())) {
            const savedState = @json($getState());
            this.matonkho = savedState.matonkho || {};
            this.soluong = savedState.soluong || {};
        }

        // Theo dõi thay đổi và cập nhật state
        this.$watch('matonkho', () => this.updateState(), { deep: true });
        this.$watch('soluong', () => this.updateState(), { deep: true });
    },
    updateState() {
        const listmatonkho = Object.keys(this.matonkho).filter(id => this.matonkho[id]);
        let validSoLuong = {};
        listmatonkho.forEach(id => {
            validSoLuong[id] = this.soluong[id] || ''; // Giữ giá trị số lượng nếu có
        });
        $wire.set('{{ $statePath }}', {
            matonkho: listmatonkho,
            soluong: validSoLuong
        });
         this.selectAll = listmatonkho.length === this.data.length;
    },
    toggleAll(event) {
        const isChecked = event.target.checked;
        this.data.forEach(item => {
            const id = item[1];
            if (isChecked) {
{{--                this.soluong[item[1]] = this.soluong[item[1]] || '';--}}
                this.matonkho[id] = true;
                this.soluong[id] = this.soluong[id] || '';
            } else {
{{--                delete this.soluong[item[1]];--}}
                delete this.matonkho[id];
                delete this.soluong[id];
            }
        });
    }
}" wire:ignore>
    <div class="p-3">
        <input
            type="text"
            placeholder="Tìm kiếm theo tên hàng tồn kho..."
            x-model="searchQuery"
            class="w-72 mb-4 px-4 py-2 border rounded shadow-sm focus:ring focus:ring-primary-200"
        >
    </div>
    <table class="fi-ta w-full divide-y divide-gray-200 rounded-lg shadow-sm">
        <thead class="bg-gray-50">
        <tr>
            @foreach($columns as $index => $column)
                <th class="px-6 py-3 text-center text-sm font-medium text-gray-500 uppercase tracking-wider">
                    {!! $column !!}
                </th>
            @endforeach
        </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200 ">
        @foreach($data as $row)
            <tr class="fi-ta-row hover:bg-gray-100">
                <td class="fi-ta-row-cell px-4 py-2 whitespace-nowrap">
                    <div class="flex justify-center">
                        <input
                            type="checkbox"
                            x-model="matonkho['{{ $row[1] }}']"
                            class=" rounded border-gray-300 text-primary-600 shadow-sm focus:border-primary-300 focus:ring focus:ring-primary-200 focus:ring-opacity-50"
                        >
                    </div>
                </td>
                @foreach(array_slice($row, 1) as $key => $cell)
                    <td class="fi-ta-row-cell px-4 py-2 whitespace-nowrap">
                        @if($key === 4) {{-- Cột số lượng xuất --}}
                        <input
                            type="number"
                            x-model="soluong['{{ $row[1] }}']"
                            x-bind:disabled="!matonkho['{{ $row[1] }}']"
                            class="fi-ta-input w-full rounded-md border-gray-300 shadow-sm focus:border-primary-300 focus:ring focus:ring-primary-200 focus:ring-opacity-50"
                        >
                        @else
                            {!! $cell !!}
                        @endif
                    </td>
                @endforeach
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
