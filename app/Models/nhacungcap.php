<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class nhacungcap extends Model
{
    use HasFactory;

    protected $table = 'nhacungcap';

    protected $fillable = [
        'id',
        'TenNCC',
        'Sdt',
        'DiaChi',
        'Email',
        'MaSoThue',
        'GhiChu',
    ];
    public function phieunhap(): HasMany
    {
        return $this->hasMany(phieunhap::class);
    }
}
