<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property string $id
 * @property string $GhiChu
 * @property DateTime $NgayLap
 * @property int $user_id
 * @property int $MaKhoNguon
 * @property int $MaKhoDich
 * @property int $TrangThai
 * @property int $created_at
 * @property int $updated_at
 */
class phieudieuchuyen extends Model
{
    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    public $incrementing = false;

    /**
     * The connection name for the model.
     *
     * @var string
     */
    protected $connection = 'mysql';

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'phieudieuchuyen';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'id';

    protected $keyType = 'string';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'NgayLap',
        'user_id',
        'giamsat_id',
        'MaKhoNguon',
        'MaKhoDich',
        'GhiChu',
        'TrangThai',
        'created_at',
        'updated_at',
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'NgayLap',
        'created_at',
        'updated_at',
    ];

    // Scopes...

    // Functions ...

    // Relations ...
    /**
     * Get the user that created the transfer note
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Get the source warehouse of the transfer note
     */
    public function khonguon(): BelongsTo
    {
        return $this->belongsTo(kho::class, 'MaKhoNguon');
    }

    /**
     * Get the destination warehouse of the transfer note
     */
    public function khodich(): BelongsTo
    {
        return $this->belongsTo(kho::class, 'MaKhoDich');
    }

    /**
     * Get the transfer note details
     */
    public function chitietphieudieuchuyen(): HasMany
    {
        return $this->hasMany(chitietphieudieuchuyen::class, 'phieudieuchuyen_id');
    }

    public function giamsat(): BelongsTo
    {
        return $this->belongsTo(User::class, 'giamsat_id');
    }
}
