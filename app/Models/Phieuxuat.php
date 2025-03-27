<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Phieuxuat extends Model
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

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'NgayXuat', 'user_id', 'kho_id', 'LyDo', 'khachhang_id', 'GhiChu', 'TrangThai', 'created_at', 'updated_at', 'NgayXuat', 'NguoiXuat', 'idKho', 'LyDo', 'idKH', 'GhiChu', 'TrangThai', 'created_at', 'updated_at'
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
        'id' => 'string', 'id' => 'int', 'NgayXuat' => 'datetime', 'user_id' => 'int', 'kho_id' => 'int', 'LyDo' => 'boolean', 'khachhang_id' => 'int', 'GhiChu' => 'string', 'TrangThai' => 'int', 'created_at' => 'timestamp', 'updated_at' => 'timestamp', 'NgayXuat' => 'datetime', 'NguoiXuat' => 'int', 'idKho' => 'int', 'LyDo' => 'boolean', 'idKH' => 'int', 'GhiChu' => 'string', 'TrangThai' => 'int', 'created_at' => 'timestamp', 'updated_at' => 'timestamp'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'NgayXuat', 'created_at', 'updated_at', 'NgayXuat', 'created_at', 'updated_at'
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
        return $this->belongsTo(KhachHang::class);
    }
}
