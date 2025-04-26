<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;


class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $users = [];

        for ($i = 1; $i <= 5; $i++) {
            $users[] = [
                'nome_user'    => "Usuário {$i}",
                'email_user'   => "usuario{$i}@exemplo.com",
                'senha_user'   => Hash::make("senha{$i}"),
                'img_user'     => "default.png",
                'banner_user'  => "default_banner.png",
                'token_user'   => Str::random(60),
                'status_user'  => 1, // 1 = ativo, por exemplo
                'bio_user'     => "Bio do usuário {$i}",
                'arroba_user'  => "usuario{$i}",
                'created_at'   => Carbon::now(),
                'updated_at'   => Carbon::now(),
            ];
        }

        DB::table('tb_user')->insert($users);
    }
}
