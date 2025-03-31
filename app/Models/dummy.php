<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int|null $id
 * @method static \Illuminate\Database\Eloquent\Builder<static>|dummy newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|dummy newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|dummy query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|dummy whereId($value)
 * @mixin \Eloquent
 */
class dummy extends Model
{
    use HasFactory;

    protected $table = 'dummy';
    protected $fillable = [
        'id',
    ];


}
