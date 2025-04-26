<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;


class InstituicaoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $instituicoes = [
            [
                'cnpj_instituicao'           => '12.345.678/0001-90',
                'verificado_instituicao'     => true,
                'logradouro_instituicao'     => 'Rua das Flores',
                'num_logradouro_instituicao' => '123',
                'bairro_instituicao'         => 'Centro',
                'cidade_instituicao'         => 'São Paulo',
                'estado_instituicao'         => 'SP',
                'cep_instituicao'            => '01001-000',
                'complemento_instituicao'    => 'Próximo à praça',
                'id_user'                    => 1, // Assumindo que o user 1 existe
                'created_at'                 => Carbon::now(),
                'updated_at'                 => Carbon::now(),
            ],
            [
                'cnpj_instituicao'           => '98.765.432/0001-11',
                'verificado_instituicao'     => false,
                'logradouro_instituicao'     => 'Avenida Principal',
                'num_logradouro_instituicao' => '456',
                'bairro_instituicao'         => 'Jardim das Palmeiras',
                'cidade_instituicao'         => 'Rio de Janeiro',
                'estado_instituicao'         => 'RJ',
                'cep_instituicao'            => '20000-000',
                'complemento_instituicao'    => 'Sala 101',
                'id_user'                    => 2, // Assumindo que o user 2 existe
                'created_at'                 => Carbon::now(),
                'updated_at'                 => Carbon::now(),
            ],
        ];

        DB::table('tb_instituicao')->insert($instituicoes);
    }
}
