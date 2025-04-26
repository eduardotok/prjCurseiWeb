<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Carbon\Carbon;

class adminSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('tb_admin')->insert([
            'nome_admin'   => 'Eduardo',  // Nome do administrador
            'email_admin'  => 'Eduardo@gmail.com', // E-mail do administrador
            'password'     => Hash::make('123'), // Senha criptografada
            'token_admin'  => Str::random(40), // Token aleatório
            'img_admin'    => 'default_admin.png', // Imagem do administrador
            'created_at'   => Carbon::now(),
            'updated_at'   => Carbon::now(),
        ]);
    }
}
