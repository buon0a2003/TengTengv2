<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int    $id
 * @property int    $TrangThai
 * @property int    $created_at
 * @property int    $updated_at
 * @property string $BienSo
 * @property string $TenXe
 * @property string $HangXe
 * @property string $TaiTrong
 * @property string $MauSac
 * @property string $GhiChu
 */
class xetai extends Model
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
    protected $table = 'xetai';

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
        'BienSo', 'TenXe', 'HangXe', 'TaiTrong', 'MauSac', 'GhiChu', 'TrangThai', 'created_at', 'updated_at'
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
        'id' => 'int', 'BienSo' => 'string', 'TenXe' => 'string', 'HangXe' => 'string', 'TaiTrong' => 'string', 'MauSac' => 'string', 'GhiChu' => 'string', 'TrangThai' => 'int', 'created_at' => 'timestamp', 'updated_at' => 'timestamp'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'created_at', 'updated_at'
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
