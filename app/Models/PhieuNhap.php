<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class PhieuNhap extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $table = 'phieunhap';
    protected $fillable = [
        'id',
        'NgayNhap',
        'users_id',
        'nhacungcap_id',
        'MaKho',
        'LyDo',
        'GhiChu',
        'TrangThai',
    ];

    public function nhacungcap(): BelongsTo
    {
        return $this->belongsTo(NhaCungCap::class);
    }

    public function user(): belongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function kho(): BelongsTo
    {
        return $this->belongsTo(kho::class);
    }
}
