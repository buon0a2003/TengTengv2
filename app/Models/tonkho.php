<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property int $kho_id
 * @property int $vattu_id
 * @property string|null $SoLuong
 * @property int|null $vitri_id
 * @property string|null $NgayCapNhat
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $id
 * @property-read kho|null $kho
 * @property-read vattu|null $vattu
 * @property-read vitri|null $vitri
 *
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho whereKhoId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho whereNgayCapNhat($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho whereSoLuong($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho whereVattuId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|tonkho whereVitriId($value)
 *
 * @mixin \Eloquent
 */
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

    protected function casts(): array
    {
        return [
            'SoLuong' => 'decimal:2',
            'NgayCapNhat' => 'datetime',
        ];
    }

    public function vitri(): BelongsTo
    {
        return $this->belongsTo(vitri::class);
    }

    public function kho(): BelongsTo
    {
        return $this->belongsTo(kho::class);
    }

    public function vattu(): BelongsTo
    {
        return $this->belongsTo(vattu::class);
    }

    public function chitietphieunhap(): HasMany
    {
        return $this->hasMany(chitietphieunhap::class);
    }

    public function chitietphieuxuat(): HasMany
    {
        return $this->hasMany(chitietphieuxuat::class);
    }

    public function chitietphieudieuchuyen(): HasMany
    {
        return $this->hasMany(chitietphieudieuchuyen::class);
    }

    //    public function chitietphieunhap(): HasMany
    //    {
    //        return $this->hasMany(chitietphieunhap::class);
    //    }
}
