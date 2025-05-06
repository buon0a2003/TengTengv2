<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property int $id
 * @property string|null $TenDVT
 * @property string|null $Mota
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, vattu> $vattu
 * @property-read int|null $vattu_count
 *
 * @method static \Illuminate\Database\Eloquent\Builder<static>|donvitinh newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|donvitinh newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|donvitinh query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|donvitinh whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|donvitinh whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|donvitinh whereMota($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|donvitinh whereTenDVT($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|donvitinh whereUpdatedAt($value)
 *
 * @mixin \Eloquent
 */
class donvitinh extends Model
{
    use HasFactory;

    protected $table = 'donvitinh';

    protected $fillable = [
        'id',
        'TenDVT',
        'Mota',
        'low',
        'very_low',
        'critical',
    ];

    public function vattu(): HasMany
    {
        return $this->hasMany(vattu::class);
    }
}
