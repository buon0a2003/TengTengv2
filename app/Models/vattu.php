<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class vattu extends Model
{
    use HasFactory;

    protected $table = 'vattu';
    protected $fillable = [
        'id',
        'TenVT',
        'LaTP',
        'donvitinh_id',
        'KichThuoc',
        'MauSac',
        'DacDiem',
    ];

    protected function casts(): array
    {
        return [
            'LaTP' => 'boolean',
        ];
    }

    public function donvitinh(): BelongsTo
    {
        return $this->belongsTo(donvitinh::class);
    }
}
