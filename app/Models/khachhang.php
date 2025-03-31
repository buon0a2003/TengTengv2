<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $TenKH
 * @property string|null $Sdt
 * @property string|null $Email
 * @property string|null $DiaChi
 * @property string|null $GhiChu
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang whereDiaChi($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang whereGhiChu($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang whereSdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang whereTenKH($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|khachhang whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class khachhang extends Model
{
    use HasFactory;
    protected $table = 'khachhang';
    protected $fillable = [
        'TenKH',
        'Sdt',
        'Email',
        'DiaChi',
        'GhiChu',
    ];
}
