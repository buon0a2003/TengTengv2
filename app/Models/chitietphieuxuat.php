<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

// /**
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

    protected function casts(): array
    {
        return [
            'SoLuong' => 'decimal:2',
        ];
    }

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
        'created_at',
        'updated_at',
    ];

    public function phieuxuat(): BelongsTo
    {
        return $this->belongsTo(phieuxuat::class);
    }

    public function vattu(): BelongsTo
    {
        return $this->belongsTo(vattu::class);
    }

    public function tonkho(): BelongsTo
    {
        return $this->belongsTo(tonkho::class);
    }
}
