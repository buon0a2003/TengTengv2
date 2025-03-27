<?php

namespace App\Forms\Components;

use Filament\Forms\Components\Field;

class CustomTable extends Field
{
    protected string $view = 'forms.components.custom-table';

    public ?array $columns = [];
    public ?array $data = [];

    public function columns(array|string|int|null $columns = null): static
    {
        if (is_array($columns)) {
            $this->columns = $columns;
        }
        echo "<script>console.log('🔹 3. columns() - Nhận dữ liệu từ schema');</script>";
        return $this;
    }

    public function data(array $data): static
    {
        $this->data = $data;
        echo "<script>console.log('🔹 4. data() - Nhận dữ liệu từ schema');</script>";
        return $this;
    }

    public function getColumns(?string $breakpoint = null): array|string|int|null
    {
        return $this->columns ?? [];
    }

    public function getData(): array
    {
        return $this->data ?? [];
    }

    protected function setUp(): void
    {
        parent::setUp();

        $this->afterStateHydrated(function () {
            echo "<script>console.log('🔹 5. afterStateHydrated() - Dữ liệu đã sẵn sàng');</script>";
            echo "<script>console.log('Debug Objects: " . json_encode($this) . "' );</script>";
        });

    }
}
