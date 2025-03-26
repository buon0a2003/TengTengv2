<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NhaCungCap extends Model
{
    use HasFactory;

    protected $table = 'nhacungcap';

    protected $fillable = [
        'TenNCC',
        'Sdt',
        'DiaChi',
        'Email',
        'MaSoThue',
        'GhiChu',
    ];
}
