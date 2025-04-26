<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ConteudoCurteiSeeder extends Seeder
{
    public function run(): void
    {
        $conteudos = [];

        // Gerando 25 registros
        for ($i = 1; $i <= 25; $i++) {
            $conteudos[] = [
                'conteudo_curtei_1' => 'Conteúdo ' . ($i * 5 - 4) . ' do Curtei',
                'conteudo_curtei_2' => 'Conteúdo ' . ($i * 5 - 3) . ' do Curtei',
                'conteudo_curtei_3' => 'Conteúdo ' . ($i * 5 - 2) . ' do Curtei',
                'conteudo_curtei_4' => 'Conteúdo ' . ($i * 5 - 1) . ' do Curtei',
                'conteudo_curtei_5' => 'Conteúdo ' . ($i * 5) . ' do Curtei',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
        }

        // Inserindo todos os registros gerados no banco de dados
        DB::table('tb_conteudo_curtei')->insert($conteudos);
    }
}
