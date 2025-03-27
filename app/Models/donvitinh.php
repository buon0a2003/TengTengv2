<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class donvitinh extends Model
{
    use HasFactory;

    protected $table = 'donvitinh';
    protected $fillable = [
        'id',
        'TenDVT',
        'Mota',
    ];

    public function vattu(): hasMany
    {
        return $this->hasMany(vattu::class);
    }
}
