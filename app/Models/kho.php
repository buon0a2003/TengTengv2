<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class kho extends Model
{
    use HasFactory;

    protected $table = 'kho';
    protected $fillable = [
        'id',
        'TenKho',
        'DiaChi',
        'GhiChu',
    ];

    public function phieunhap(): hasMany
    {
        return $this->hasMany(phieunhap::class);
    }

    public function vitri(): hasMany
    {
        return $this->hasMany(vitri::class);
    }
}
