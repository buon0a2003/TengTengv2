<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class nhanvien extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'nhanvien';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'Birth',
        'Phone',
        'Address',
        'cccd',
        'image',
    ];

    public function user(): HasOne
    {
        return $this->hasOne(User::class, 'nhanvien_id');
    }

    public function phieuxuat(): HasMany
    {
        return $this->hasMany(phieuxuat::class);
    }

    public function phieunhap(): HasMany
    {
        return $this->hasMany(phieunhap::class);
    }

    protected static function boot()
    {
        parent::boot();
        static::updated(function ($model) {
            $user = User::where('nhanvien_id', $model->id)->first();

            if ($user) {
                User::withoutEvents(function () use ($user, $model) {
                    $user->update([
                        'name' => $model->name,
                        'Phone' => $model->Phone,
                        'Birth' => $model->Birth,
                        'Address' => $model->Address,
                        'cccd' => $model->cccd,
                        'image' => $model->image,
                    ]);
                });
            }
        });
    }
}
