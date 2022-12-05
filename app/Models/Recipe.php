<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Recipe extends Model
{
    use HasFactory;


    protected $fillable = [
        'title',
        'prep_time',
        'cook_time',
        'num_of_servings',
        'description'
    ];
}
