<?php


namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class CurteiSeeder extends Seeder
{
    public function run(): void
    {
        $curteis = [];

        // Gerando 25 registros
        for ($i = 1; $i <= 25; $i++) {
            $curteis[] = [
                'titulo_curtei' => 'Título Curtei ' . $i,
                'descricao_curtei' => 'Descrição do conteúdo curtei ' . $i,
                'id_user' => rand(1, 25), // Assumindo que você tem usuários com ID de 1 a 10
                'id_conteudo_curtei' => rand(1, 25), // Assumindo que você tem conteúdos com ID de 1 a 25
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
        }

        // Inserindo todos os registros gerados no banco de dados
        DB::table('tb_curtei')->insert($curteis);
    }
}



?>