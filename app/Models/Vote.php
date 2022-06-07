<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Vote extends Model 
{
    protected $table = 'vote';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'production','user', 
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        //'password',
    ];

}
