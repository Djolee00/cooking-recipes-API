<?php

namespace App\Http\Controllers;

use App\Http\Resources\RecipeCollection;
use App\Http\Resources\RecipeResource;
use App\Models\Ingredient;
use App\Models\Recipe;
use App\Models\Step;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class RecipeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return new RecipeCollection(Recipe::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $this->validate($request, [
                'title' => 'required',
                'prep_time' => 'required',
                'cook_time' => 'required',
                'num_of_servings' => 'required',
                'description' => 'required'
            ]);
        } catch (\Illuminate\Validation\ValidationException $th) {
            return response()->json("All fields must be filled", 400);
        }
        $recipeData = [
            'title' => $request->title,
            'prep_time' => $request->prep_time,
            'cook_time' => $request->cook_time,
            'num_of_servings' => $request->num_of_servings,
            'description' => $request->description,
            'user_id' => $request->user_id
        ];
        $newRecipe = Recipe::create($recipeData);

        $this->saveIngredients($newRecipe->id, $request);
        $this->saveSteps($newRecipe->id, $request);

        $newRecipe = Recipe::find($newRecipe->id);
        return response()->json(new RecipeResource($newRecipe), 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Recipe  $recipe
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $rec = Recipe::find($id);
        if (is_null($rec)) {
            return response()->json("Recipe with id $id not found", 404);
        }

        return response()->json(new RecipeResource($rec));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Recipe  $recipe
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tempRecipe = Recipe::find($id);
        if (is_null($tempRecipe)) {
            return response()->json("Recipe with id $id doesn't exist.");
        }

        $tempRecipe->delete();

        $ings = Ingredient::where('recipe_id', '=', $id);
        if (!is_null($ings)) {
            $ings->delete();
        }

        $steps = Step::where('recipe_id', '=', $id);

        if (!is_null($steps)) {
            $steps->delete();
        }

        return response()->json($tempRecipe, 200);
    }


    private function saveIngredients($id, $request)
    {

        $ingredients = $request->ingredients;
        foreach ($ingredients as $ing) {
            $ingData = [
                'name' => $ing['name'],
                'quantity' => $ing['quantity'],
                'recipe_id' => $id
            ];

            Ingredient::create($ingData);
        }
    }

    private function saveSteps($id, $request)
    {
        $steps = $request->steps;
        foreach ($steps as $step) {
            $stepData = [
                'description' => $step['description'],
                'ordinal_number' => $step['ordinal_number'],
                'recipe_id' => $id
            ];

            Step::create($stepData);
        }
    }
}
