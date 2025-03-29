<?php

namespace App\Forms\Components;

use Filament\Forms\Components\Field;

class CustomTableForPhieuXuat extends Field
{
    protected string $view = 'forms.components.custom-table-for-phieu-xuat';

    public ?array $columns = [];
    public ?array $data = [];

    public function columns(array|string|int|null $columns = null): static
    {
        if (is_array($columns)) {
            $this->columns = $columns;
        }
        return $this;
    }


    public function data(array $data): static
    {
        $this->data = $data;
        return $this;
    }

    public function getColumns(?string $breakpoint = null): array|string|int|null
    {
        return $this->columns;
    }

    public function getData(): array
    {
        return $this->data;
    }

    protected function setUp(): void
    {
        parent::setUp();

    }
}
