<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class phieuxuat extends Model
{
    use HasFactory;

    public $incrementing = false;

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
    protected $table = 'phieuxuat';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'id';

    protected $keyType = 'string';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'NgayXuat',
        'user_id',
        'kho_id',
        'LyDo',
        'giamsat_id',
        'khachhang_id',
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

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function giamsat(): BelongsTo
    {
        return $this->belongsTo(User::class, 'giamsat_id');
    }

    public function kho(): BelongsTo
    {
        return $this->belongsTo(kho::class);
    }

    public function khachhang(): BelongsTo
    {
        return $this->belongsTo(khachhang::class);
    }

    public function chitietphieuxuat(): HasMany
    {
        return $this->hasMany(chitietphieuxuat::class);
    }

    public function phieusuco(): HasMany
    {
        return $this->hasMany(phieusuco::class);
    }
}
