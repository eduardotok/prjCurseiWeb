<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
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
        $this->call([
            UserSeeder::class,
            InstituicaoSeeder::class,
            PostSeeder::class,
            adminSeeder::class,
            ConteudoCurteiSeeder::class,
            CurteiSeeder::class,
        ]);
    }
}
