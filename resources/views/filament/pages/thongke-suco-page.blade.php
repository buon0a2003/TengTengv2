<x-filament::page>
    <div class="space-y-6">
        <div class="filament-forms-card-component rounded-xl border border-gray-300 bg-white p-6 dark:border-gray-600 dark:bg-gray-800">
            {{ $this->form }}
        </div>

        {{ $this->table }}
    </div>
</x-filament::page>

