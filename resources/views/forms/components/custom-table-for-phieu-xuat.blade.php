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

<div x-data="{
    matonkho: {},
    soluong: {},
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
        $wire.set('{{ $statePath }}', {
            matonkho: this.matonkho,
            soluong: this.soluong
        });
    },
    toggleAll(event) {
        const isChecked = event.target.checked;
        this.data.forEach(item => {
            this.matonkho[item[1]] = isChecked; // item[1] là cột Mã
            if (isChecked) {
                this.soluong[item[1]] = this.soluong[item[1]] || '';
            } else {
                delete this.soluong[item[1]];
            }
        });
    }
}" wire:ignore>
    <table class="w-full divide-y divide-gray-200">
        <thead class="bg-gray-50">
        <tr>

            @foreach($columns as $column)
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    {{ $column }}
                </th>
            @endforeach
        </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
        @foreach($data as $row)
            <tr>
                <td class="px-6 py-4 whitespace-nowrap">
                    <input
                        type="checkbox"
                        x-model="matonkho['{{ $row[1] }}']"
                        class="rounded border-gray-300 text-primary-600 shadow-sm focus:border-primary-300 focus:ring focus:ring-primary-200 focus:ring-opacity-50"
                    >
                </td>
                @foreach(array_slice($row, 1) as $key => $cell)
                    <td class="px-6 py-4 whitespace-nowrap">
                        @if($key === 4) {{-- Cột số lượng xuất --}}
                        <input
                            type="number"
                            x-model="soluong['{{ $row[1] }}']"
                            x-bind:disabled="!matonkho['{{ $row[1] }}']"
                            class="block w-full rounded-md border-gray-300 shadow-sm focus:border-primary-300 focus:ring focus:ring-primary-200 focus:ring-opacity-50"
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

    <input type="hidden" name="{{ $statePath }}" x-model="JSON.stringify({matonkho, soluong})">
</div>
