<?php

declare(strict_types=1);

namespace App\Filament\Resources\Shield\Pages;

use App\Filament\Resources\CustomRoleResource;
use BezhanSalleh\FilamentShield\Resources\RoleResource\Pages\ListRoles;

class CustomListRoles extends ListRoles
{
    protected static string $resource = CustomRoleResource::class;
}
