<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RecipeResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */

    public static $wrap = 'recipe';

    public function toArray($request)
    {
        //return parent::toArray($request);

        return [
            'id' => $this->resource->id,
            'title' => $this->resource->title,
            'prep_time' => $this->resource->prep_time,
            'cook_time' => $this->resource->cook_time,
            'num_of_servings' => $this->resource->num_of_servings,
            'description' => $this->resource->description,

            'ingredients' => $this->resource->ingredients,
            'steps' => $this->resource->steps

        ];
    }
}
