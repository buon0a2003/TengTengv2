<?php

namespace App\Filament\Resources;

use App\Filament\Resources\Shield\Pages\CustomCreateRole;
use App\Filament\Resources\Shield\Pages\CustomEditRole;
use App\Filament\Resources\Shield\Pages\CustomListRoles;
use App\Filament\Resources\Shield\Pages\CustomViewRole;
use BezhanSalleh\FilamentShield\Resources\RoleResource;

class CustomRoleResource extends RoleResource
{

    public static function getPages(): array
    {
        return [
            'index' => CustomListRoles::route('/'),
            'create' => CustomCreateRole::route('/create'),
            'view' => CustomViewRole::route('/{record}'),
            'edit' => CustomEditRole::route('/{record}/edit'),
        ];
    }
}