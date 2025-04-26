<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class PostSeeder extends Seeder
{
    public function run(): void
    {
        $posts = [];

        // Supondo que temos 30 usuários e queremos criar 3 posts para cada usuário
        for ($i = 1; $i <= 25; $i++) {
            for ($j = 1; $j <= 3; $j++) {
                $posts[] = [
                    'status_post'    => 1,  // Status ativo (ou outro status que você quiser)
                    'titulo_post'    => "Post #{$i}-{$j}",
                    'conteudo_post'  => "Conteúdo do post #{$i}-{$j}",
                    'descricao_post' => "Descrição do post #{$i}-{$j}",
                    'id_user'        => $i, // Usuário correspondente ao post
                    'created_at'     => Carbon::now(),
                    'updated_at'     => Carbon::now(),
                ];

                // Inserir os posts em lotes de 10
                if (($i * 3 + $j) % 10 == 0 || ($i * 3 + $j) == 90) { // Aqui, 30 usuários * 3 posts por usuário = 90 posts
                    DB::table('tb_post')->insert($posts);
                    $posts = [];  // Limpa o array de posts para o próximo lote
                }
            }
        }
    }
}
