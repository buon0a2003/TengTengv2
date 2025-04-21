<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property string   $id
 * @property string   $GhiChu
 * @property int      $phieuxuat_id
 * @property int      $xetai_id
 * @property int      $taixe_id
 * @property int      $user_id
 * @property int      $TrangThai
 * @property int      $created_at
 * @property int      $updated_at
 * @property DateTime $NgayTao
 * @property DateTime $NgayVanChuyen
 */
class phieuvanchuyen extends Model
{
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
        'phieuxuat_id', 'xetai_id', 'taixe_id', 'user_id', 'NgayTao', 'NgayVanChuyen', 'GhiChu', 'TrangThai', 'created_at', 'updated_at'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'string', 'phieuxuat_id' => 'int', 'xetai_id' => 'int', 'taixe_id' => 'int', 'user_id' => 'int', 'NgayTao' => 'datetime', 'NgayVanChuyen' => 'datetime', 'GhiChu' => 'string', 'TrangThai' => 'int', 'created_at' => 'timestamp', 'updated_at' => 'timestamp'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'NgayTao', 'NgayVanChuyen', 'created_at', 'updated_at'
    ];

    /**
     * Indicates if the model should be timestamped.
     *
     * @var boolean
     */
    public $timestamps = false;

    // Scopes...

    // Functions ...

    // Relations ...
}
