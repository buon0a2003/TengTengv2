<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * 
 *
 * @property int $id
 * @property string|null $phieunhap_id
 * @property int|null $vattu_id
 * @property string|null $SoLuong
 * @property string|null $GhiChu
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int|null $vitri_id
 * @property-read \App\Models\phieunhap|null $phieunhap
 * @property-read \App\Models\vattu|null $vattu
 * @property-read \App\Models\vitri|null $vitri
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap whereGhiChu($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap wherePhieunhapId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap whereSoLuong($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap whereVattuId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|chitietphieunhap whereVitriId($value)
 * @mixin \Eloquent
 */
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
