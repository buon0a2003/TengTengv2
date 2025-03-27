<x-dynamic-component
    :component="$getFieldWrapperView()"
    :field="$field"
>
    <div x-data="{ state: $wire.$entangle('{{ $getStatePath() }}') }"

    >
        <?php
            echo "<script>console.log('Debug Objects: " . $getStatePath() . "' );</script>";
        ?>
        <!-- Interact with the `state` property in Alpine.js -->
        <table class="w-full border border-gray-300">
            <thead>
            <tr class="bg-gray-200">
                @foreach ($getColumns() as $column)
                    <th class="border px-4 py-2">{{ $column }}</th>
                @endforeach
            </tr>
            </thead>
            <tbody>
            @foreach ($getData() as $row)
                <tr class="border">
                    @foreach ($getColumns() as $key => $column)
                        <td class="border px-4 py-2">{{ $row[$key] ?? '' }}</td>
                    @endforeach
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
</x-dynamic-component>
