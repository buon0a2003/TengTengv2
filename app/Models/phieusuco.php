<?php

declare(strict_types=1);

namespace App\Models;

use App\Models\phieuxuat;
use App\Models\phieuvanchuyen;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * @property string $id
 * @property string $Mota
 * @property string $GhiChu
 * @property int $phieuxuat_id
 * @property int $phieuvanchuyen_id
 * @property int $user_id
 * @property int $TrangThai
 * @property int $created_at
 * @property int $updated_at
 * @property DateTime $NgayTao
 */
class phieusuco extends Model
{
    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

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
    protected $table = 'phieusuco';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'id';

    /**
     * Indicates if the IDs are auto-incrementing.
     *
     * @var bool
     */
    public $incrementing = false;

    /**
     * The data type of the auto-incrementing ID.
     *
     * @var string
     */
    protected $keyType = 'string';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'phieuxuat_id',
        'phieuvanchuyen_id',
        'NgayTao',
        'user_id',
        'Mota',
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
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'string',
        'phieuxuat_id' => 'int',
        'phieuvanchuyen_id' => 'int',
        'NgayTao' => 'datetime',
        'user_id' => 'int',
        'Mota' => 'string',
        'GhiChu' => 'string',
        'TrangThai' => 'int',
        'created_at' => 'timestamp',
        'updated_at' => 'timestamp',
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'NgayTao',
        'created_at',
        'updated_at',
    ];

    // Scopes...

    // Functions ...

    // Relations ...
    public function phieuxuat(): BelongsTo
    {
        return $this->belongsTo(phieuxuat::class);
    }

    public function phieuvanchuyen(): BelongsTo
    {
        return $this->belongsTo(phieuvanchuyen::class);
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
