<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property string $id
 * @property string $GhiChu
 * @property int $phieuxuat_id
 * @property int $xetai_id
 * @property int $taixe_id
 * @property int $user_id
 * @property int $TrangThai
 * @property int $created_at
 * @property int $updated_at
 * @property DateTime $NgayTao
 * @property DateTime $NgayVanChuyen
 */
class phieuvanchuyen extends Model
{
    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    public $incrementing = false;

    protected $keyType = 'string';

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
    protected $table = 'phieuvanchuyen';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'phieuxuat_id',
        'xetai_id',
        'taixe_id',
        'user_id',
        'NgayTao',
        'NgayVanChuyen',
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
        'NgayTao',
        'NgayVanChuyen',
        'created_at',
        'updated_at',
    ];

    // Scopes...

    // Functions ...

    // Relations ...

    public function phieuxuat()
    {
        return $this->belongsTo(phieuxuat::class, 'phieuxuat_id', 'id');
    }

    public function xetai()
    {
        return $this->belongsTo(xetai::class, 'xetai_id', 'id');
    }

    public function taixe()
    {
        return $this->belongsTo(taixe::class, 'taixe_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(user::class, 'user_id', 'id');
    }
}
