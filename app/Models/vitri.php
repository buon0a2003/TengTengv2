<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property int $id
 * @property int|null $kho_id
 * @property string|null $Mota
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, chitietphieunhap> $chitietphieunhap
 * @property-read int|null $chitietphieunhap_count
 * @property-read kho|null $kho
 * @property-read \Illuminate\Database\Eloquent\Collection<int, tonkho> $tonkho
 * @property-read int|null $tonkho_count
 *
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vitri newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vitri newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vitri query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vitri whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vitri whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vitri whereKhoId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vitri whereMota($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vitri whereUpdatedAt($value)
 *
 * @mixin \Eloquent
 */
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

    public function chitietphieunhap(): HasMany
    {
        return $this->hasMany(chitietphieunhap::class);
    }

    public function tonkho(): HasMany
    {
        return $this->hasMany(tonkho::class);
    }

    public function chitietphieuxuat(): HasMany
    {
        return $this->hasMany(chitietphieuxuat::class);
    }

    public function chitietphieudieuchuyen(): HasMany
    {
        return $this->hasMany(chitietphieudieuchuyen::class, 'vitri_dich_id');
    }
}
