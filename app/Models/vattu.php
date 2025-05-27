<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property int $id
 * @property string|null $TenVT
 * @property bool|null $LaTP
 * @property int|null $donvitinh_id
 * @property string|null $KichThuoc
 * @property string|null $MauSac
 * @property string|null $DacDiem
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, chitietphieunhap> $chitietphieunhap
 * @property-read int|null $chitietphieunhap_count
 * @property-read donvitinh|null $donvitinh
 * @property-read \Illuminate\Database\Eloquent\Collection<int, tonkho> $tonkho
 * @property-read int|null $tonkho_count
 *
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu whereDacDiem($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu whereDonvitinhId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu whereKichThuoc($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu whereLaTP($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu whereMauSac($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu whereTenVT($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|vattu whereUpdatedAt($value)
 *
 * @mixin \Eloquent
 */
class vattu extends Model
{
    use HasFactory;

    protected $table = 'vattu';

    protected $fillable = [
        'id',
        'MaVT',
        'TenVT',
        'LaTP',
        'donvitinh_id',
        'KichThuoc',
        'MauSac',
        'DacDiem',
    ];

    public function donvitinh(): BelongsTo
    {
        return $this->belongsTo(donvitinh::class);
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
        return $this->hasMany(chitietphieudieuchuyen::class);
    }

    protected function casts(): array
    {
        return [
            'LaTP' => 'boolean',
        ];
    }
}
