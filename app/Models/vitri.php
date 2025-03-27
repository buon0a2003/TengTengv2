<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class vitri extends Model
{
    use HasFactory;

    protected $table = 'vitri';
    protected $fillable = [
        'id',
        'kho_id',
        'Mota',
    ];

//    public function phieunhap(): hasMany
//    {
//        return $this->hasMany(phieunhap::class);
//    }

    public function kho(): BelongsTo
    {
        return $this->BelongsTo(kho::class);
    }

    public function chitietphieunhap(): hasMany
    {
        return $this->hasMany(chitietphieunhap::class);
    }
}
