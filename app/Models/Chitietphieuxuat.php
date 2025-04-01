<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

///**
// * @property int    $id
// * @property int    $vatu_id
// * @property int    $created_at
// * @property int    $updated_at
// * @property int    $idPX
// * @property int    $idVT
// * @property string $phieuxuat_id
// * @property string $GhiChu
// */
class Chitietphieuxuat extends Model
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
    protected $table = 'chitietphieuxuat';

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
        'phieuxuat_id', 'vatu_id', 'SoLuong', 'GhiChu', 'created_at', 'updated_at', 'created_at', 'updated_at'
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
        'id' => 'int', 'id' => 'int', 'phieuxuat_id' => 'string', 'vatu_id' => 'int', 'GhiChu' => 'string', 'created_at' => 'timestamp', 'updated_at' => 'timestamp', 'idPX' => 'int', 'idVT' => 'int', 'GhiChu' => 'string', 'created_at' => 'timestamp', 'updated_at' => 'timestamp'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'created_at', 'updated_at', 'created_at', 'updated_at'
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
