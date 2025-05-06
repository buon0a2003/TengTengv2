<?php

declare(strict_types=1);

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;

class CanhBao extends Widget
{
    public string $message = 'Một số vật tư tồn kho đang thiếu hụt, vui lòng kiểm tra!';

    protected string|int|array $columnSpan = 'full';

    protected static string $view = 'filament.widgets.canh-bao';
}
