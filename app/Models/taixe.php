<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property int $id
 * @property int $TrangThai
 * @property int $created_at
 * @property int $updated_at
 * @property string $TenTaiXe
 * @property string $Sdt
 * @property string $CCCD
 * @property string $BangLai
 * @property string $DiaChi
 * @property string $GhiChu
 * @property Date $NamSinh
 */
class taixe extends Model
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
    protected $table = 'taixe';

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
        'TenTaiXe',
        'Sdt',
        'CCCD',
        'BangLai',
        'DiaChi',
        'NamSinh',
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
        'id' => 'int',
        'TenTaiXe' => 'string',
        'Sdt' => 'string',
        'CCCD' => 'string',
        'BangLai' => 'string',
        'DiaChi' => 'string',
        'NamSinh' => 'date',
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
        'NamSinh',
        'created_at',
        'updated_at',
    ];

    // Scopes...

    // Functions ...

    // Relations ...

    public function phieuvanchuyen(): HasMany
    {
        return $this->hasMany(phieuvanchuyen::class);
    }
}
