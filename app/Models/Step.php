<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Step extends Model
{
    use HasFactory;

    protected $fillable = [
        'description',
        'ordinal_number',
        'recipe_id'
    ];

    // this creates property, we don't call it as a function, but like a property
    public function recipe()
    {
        return $this->belongsTo(Recipe::class);
    }
}
