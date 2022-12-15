<?php

namespace Database\Factories;

use App\Models\Appeal;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Appeal>
 */
class ClaimFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Appeal::class;
    public function definition()
    {
        return [
            'aaa' => 2312
        ];
    }
}
