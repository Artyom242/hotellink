<?php

namespace Database\Factories;

use App\Models\Type;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Room>
 */
class RoomFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'room_number' => $this->faker->unique()->numerify('###'),
            'type_id' => Type::inRandomOrder()->first()->id ?? Type::factory(),
            'floor' => $this->faker->numberBetween(0,100),
            'status' => $this->faker->randomElement(['confirmed', 'pending', 'cancelled'])
        ];
    }
}
