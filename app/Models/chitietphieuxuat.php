<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

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
class chitietphieuxuat extends Model
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
        'phieuxuat_id',
        'tonkho_id',
        'vattu_id',
        'SoLuong',
        'GhiChu',
        'created_at',
        'updated_at',
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [

    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * Indicates if the model should be timestamped.
     *
     * @var boolean
     */
    public $timestamps = false;

    public function phieuxuat(): belongsTo
    {
        return $this->belongsTo(phieuxuat::class);
    }

    public function vattu(): belongsTo
    {
        return $this->belongsTo(vattu::class);
    }

}
