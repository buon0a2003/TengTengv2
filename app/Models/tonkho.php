<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class tonkho extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $table = 'tonkho';
    protected $fillable = [
        'id',
        'kho_id',
        'vattu_id',
        'SoLuong',
        'vitri_id',
        'NgayCapNhat',
    ];

    public function vitri(): BelongsTo
    {
        return $this->belongsTo(vitri::class);
    }

    public function kho(): belongsTo
    {
        return $this->belongsTo(kho::class);
    }

    public function vattu(): BelongsTo
    {
        return $this->belongsTo(vattu::class);
    }

//    public function chitietphieunhap(): HasMany
//    {
//        return $this->hasMany(chitietphieunhap::class);
//    }
}
