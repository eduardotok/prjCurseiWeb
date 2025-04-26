<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        $nomes = [
            'Guilherme', 'Rian', 'Breno', 'Hugo', 'Victor', 'Eduardo', 'Ellen', 'Caroline',
            'Felipe', 'Klayver', 'O alencar', 'Clara', 'O sergio', 'Clodoaldo', 'Rafaela', 'Thiago',
            'Luciano', 'O santana', 'Junior & Aline', 'Fatec', 'Senai', 'SESI', 'Enap', 'Etec',
        ];

        $users = [];

        foreach ($nomes as $i => $nome) {
            $users[] = [
                'nome_user'    => $nome,
                'email_user'   => strtolower($nome) . $i . '@gmail.com',
                'senha_user'   => Hash::make('senha123'),
                'img_user'     => 'default' . ($i + 1) . '.png',              
                'banner_user'  => 'default_banner' . ($i + 1) . '.png',       
                'token_user'   => Str::random(40),
                'status_user'  => 1,
                'bio_user'     => "Olá, eu sou {$nome}!",
                'arroba_user'  => strtolower($nome) . $i,
                'created_at'   => Carbon::now(),
                'updated_at'   => Carbon::now(),
            ];
        }

        DB::table('tb_user')->insert($users);
    }
}
