<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Client;
use App\Models\Room;
use App\Models\Type;
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
         Type::factory(5)->create();
         Room::factory(10)->create();
         Client::factory(10)->create();
    }
}
