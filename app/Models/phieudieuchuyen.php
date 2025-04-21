<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property string   $id
 * @property string   $GhiChu
 * @property DateTime $NgayLap
 * @property int      $user_id
 * @property int      $MaKhoNguon
 * @property int      $MaKhoDich
 * @property int      $TrangThai
 * @property int      $created_at
 * @property int      $updated_at
 */
class phieudieuchuyen extends Model
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
    protected $table = 'phieudieuchuyen';

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
        'NgayLap', 'user_id', 'MaKhoNguon', 'MaKhoDich', 'GhiChu', 'TrangThai', 'created_at', 'updated_at'
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
        'id' => 'string', 'NgayLap' => 'datetime', 'user_id' => 'int', 'MaKhoNguon' => 'int', 'MaKhoDich' => 'int', 'GhiChu' => 'string', 'TrangThai' => 'int', 'created_at' => 'timestamp', 'updated_at' => 'timestamp'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'NgayLap', 'created_at', 'updated_at'
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
