<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class chitietphieunhap extends Model
{
    use HasFactory;

    protected $table = 'chitietphieunhap';
    protected $fillable = [
        'id',
        'phieunhap_id',
        'vattu_id',
        'vitri_id',
        'SoLuong',
        'GhiChu',
    ];

    public function phieunhap(): belongsTo
    {
        return $this->belongsTo(phieunhap::class);
    }

    public function vattu(): belongsTo
    {
        return $this->belongsTo(vattu::class);
    }

    public function vitri(): belongsTo
    {
        return $this->belongsTo(vitri::class);
    }
}
