@if ($this->table->getRecords()->isNotEmpty())
    <x-filament-widgets::widget>
        <x-filament::section       
            icon="heroicon-m-exclamation-triangle"
            icon-color="danger">
            <x-slot name="heading">
                <div class="text-danger-500 dark:text-danger-100"> {{ $Emptymessage }} </div>
            </x-slot>
            
            {{ $this->table }}
        </x-filament::section>
    </x-filament-widgets::widget>
@else
    <x-filament-widgets::widget>
        <x-filament::section>       
            <div class="flex justify-center">
                <div class="inline-flex items-center space-x-2 text-green-500 dark:text-green-100">
                    <x-icon name="heroicon-o-check-circle" class="h-6 w-6" />
                    <span class=" text-base font-medium"> {{ $Noemptymessage }} </span>
                </div>
            </div>
        </x-filament::section>
    </x-filament-widgets::widget>
@endif
