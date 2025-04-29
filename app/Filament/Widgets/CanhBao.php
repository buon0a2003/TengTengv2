<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;

class CanhBao extends Widget
{
    protected string|int|array $columnSpan = 'full';

    protected static string $view = 'filament.widgets.canh-bao';

    public string $message = 'Một số vật tư tồn kho đang thiếu hụt, vui lòng kiểm tra!';
}
