<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Recipe>
 */
class RecipeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title' => $this->faker->unique()->text(),
            'prep_time' => $this->faker->numberBetween(5, 30),
            'cook_time' => $this->faker->numberBetween(5, 30),
            'num_of_servings' => $this->faker->numberBetween(1, 10),
            'description' => $this->faker->text(),
            'user_id' => User::factory(),
            'published_at' => now()
        ];
    }
}
