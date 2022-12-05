<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Recipe;
use App\Models\Ingredient;
use App\Models\Step;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        // to delete all rows, so they can be seeded withou error of unique columns
        Recipe::truncate();
        Step::truncate();
        \App\Models\User::truncate();



        \App\Models\User::factory(5)->create();


        Recipe::create([
            'id' => 1,
            'title' => "Vegetable Soup",
            'prep_time' => 15,
            'cook_time' => 10,
            'num_of_servings' => 5,
            'description' => "I love growing fresh herbs and right now the oregano in my herb pot is overgrowing! Greek Ribs is one tasty recipe using fresh oregano. Enjoy these ribs as an appetizer and serve with my homemade Tzatziki Sauce. As a main course these Greek marinated ribs are exceptional served with a tasty salad like my Santa Fe Salad. The marinade of garlic, oregano, lemon and onions pack some serious flavour! Make the marinade in the morning and let the ribs soak up the seasonings all day.",
            'user_id' => 1,
            'published_at' => now()
        ]);

        Recipe::create([
            'id' => 2,
            'title' => "Banana Pancakes",
            'prep_time' => 10,
            'cook_time' => 15,
            'num_of_servings' => 4,
            'description' => "Wake up on the right side of the bed with a stack of sweet, cozy, and simple banana pancakes. This top-rated banana pancake recipe is easy to make and it comes together in just 15 minutes, so you don't have to wake up early to enjoy a satisfying breakfast. Learn how to make, store, and serve the best banana pancakes ever.",
            'user_id' => 1,
            'published_at' => now()
        ]);

        Recipe::factory(4)->create();
        $recipe = Recipe::factory()->create();

        Step::create([
            'description' => 'Marinating the Steak',
            'ordinal_number' => 1,
            'recipe_id' => 1,
            'created_at' => now(),
            'updated_at' => now()
        ]);

        Step::create([
            'description' => 'Preparing the Grill',
            'ordinal_number' => 2,
            'recipe_id' => 1,
            'created_at' => now(),
            'updated_at' => now()
        ]);

        Step::create([
            'description' => 'Marinate in the refrigerator, turning occasionally, 4 to 8 hours.',
            'ordinal_number' => 1,
            'recipe_id' => $recipe->id,
            'created_at' => now(),
            'updated_at' => now()
        ]);

        Ingredient::create([
            'name' => 'Yukon gold potatoes',
            'quantity' => 3,
            'recipe_id' => $recipe->id
        ]);

        Ingredient::create([
            'name' => 'Teaspoons kosher salt',
            'quantity' => 2,
            'recipe_id' => 1
        ]);

        Ingredient::create([
            'name' => 'Cup extra virgin olive oil, divided',
            'quantity' => 3,
            'recipe_id' => 2
        ]);

        Ingredient::factory(3)->create();


        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
