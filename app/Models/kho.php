<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
}
