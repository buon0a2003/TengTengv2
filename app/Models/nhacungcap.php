<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property int $id
 * @property string $TenNCC
 * @property string|null $Sdt
 * @property string|null $Email
 * @property string $DiaChi
 * @property string|null $MaSoThue
 * @property string|null $GhiChu
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, phieunhap> $phieunhap
 * @property-read int|null $phieunhap_count
 *
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap whereDiaChi($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap whereGhiChu($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap whereMaSoThue($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap whereSdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap whereTenNCC($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|nhacungcap whereUpdatedAt($value)
 *
 * @mixin \Eloquent
 */
class nhacungcap extends Model
{
    use HasFactory;

    protected $table = 'nhacungcap';

    protected $fillable = [
        'id',
        'TenNCC',
        'Sdt',
        'DiaChi',
        'Email',
        'MaSoThue',
        'GhiChu',
    ];

    public function phieunhap(): HasMany
    {
        return $this->hasMany(phieunhap::class);
    }
}
