<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * @property int $id
 * @property int $vattu_id
 * @property int $created_at
 * @property int $updated_at
 * @property string $phieudieuchuyen_id
 * @property string $GhiChu
 */
class chitietphieudieuchuyen extends Model
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
    protected $table = 'chitietphieudieuchuyen';

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
        'phieudieuchuyen_id',
        'vattu_id',
        'tonkho_id',
        'vitri_dich_id',
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

    // Scopes...

    // Functions ...

    // Relations ...
    /**
     * Get the transfer note that owns the detail
     */
    public function phieudieuchuyen(): BelongsTo
    {
        return $this->belongsTo(phieudieuchuyen::class);
    }

    /**
     * Get the item that is being transferred
     */
    public function vattu(): BelongsTo
    {
        return $this->belongsTo(vattu::class);
    }

    /**
     * Get the inventory record for this transfer detail
     */
    public function tonkho(): BelongsTo
    {
        return $this->belongsTo(tonkho::class);
    }

    /**
     * Get the destination position for this transfer detail
     */
    public function vitridich(): BelongsTo
    {
        return $this->belongsTo(vitri::class, 'vitri_dich_id');
    }

    protected function casts(): array
    {
        return [
            'SoLuong' => 'decimal:2',
        ];
    }
}
