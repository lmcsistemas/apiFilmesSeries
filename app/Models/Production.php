<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Production extends Model 
{
    protected $table = 'production';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'type','title','duration','description', 'genre', 'photo_link'
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
