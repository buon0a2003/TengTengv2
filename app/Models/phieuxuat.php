<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class phieuxuat extends Model
{
    use HasFactory;
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
    public $incrementing = false;
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
    protected $hidden = [

    ];

    /**
     * Indicates if the model should be timestamped.
     *
     * @var boolean
     */
    public $timestamps = false;


    public function user(): belongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function kho(): BelongsTo
    {
        return $this->belongsTo(kho::class);
    }

    public function khachhang(): BelongsTo
    {
        return $this->belongsTo(khachHang::class);
    }

    public function chitietphieuxuat(): hasMany
    {
        return $this->hasMany(chitietphieuxuat::class);
    }
}
