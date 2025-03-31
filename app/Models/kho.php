<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * 
 *
 * @property int $id
 * @property string|null $TenKho
 * @property string|null $DiaChi
 * @property string|null $GhiChu
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\phieunhap> $phieunhap
 * @property-read int|null $phieunhap_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\tonkho> $tonkho
 * @property-read int|null $tonkho_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\vitri> $vitri
 * @property-read int|null $vitri_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|kho newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|kho newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|kho query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|kho whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|kho whereDiaChi($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|kho whereGhiChu($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|kho whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|kho whereTenKho($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|kho whereUpdatedAt($value)
 * @mixin \Eloquent
 */
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

    public function phieunhap(): hasMany
    {
        return $this->hasMany(phieunhap::class);
    }

    public function vitri(): hasMany
    {
        return $this->hasMany(vitri::class);
    }

    public function tonkho(): hasMany
    {
        return $this->hasMany(tonkho::class);
    }
}
