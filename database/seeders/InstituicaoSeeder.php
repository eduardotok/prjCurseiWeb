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
                'id_user'                    => 21,
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
                'id_user'                    => 22,
                'created_at'                 => Carbon::now(),
                'updated_at'                 => Carbon::now(),
            ],
            [
                'cnpj_instituicao'           => '11.222.333/0001-44',
                'verificado_instituicao'     => true,
                'logradouro_instituicao'     => 'Travessa das Oliveiras',
                'num_logradouro_instituicao' => '789',
                'bairro_instituicao'         => 'Bela Vista',
                'cidade_instituicao'         => 'Belo Horizonte',
                'estado_instituicao'         => 'MG',
                'cep_instituicao'            => '30000-000',
                'complemento_instituicao'    => 'Fundos',
                'id_user'                    => 23,
                'created_at'                 => Carbon::now(),
                'updated_at'                 => Carbon::now(),
            ],
            [
                'cnpj_instituicao'           => '55.666.777/0001-22',
                'verificado_instituicao'     => true,
                'logradouro_instituicao'     => 'Alameda dos Anjos',
                'num_logradouro_instituicao' => '101',
                'bairro_instituicao'         => 'Vila Nova',
                'cidade_instituicao'         => 'Curitiba',
                'estado_instituicao'         => 'PR',
                'cep_instituicao'            => '80000-000',
                'complemento_instituicao'    => 'Casa 2',
                'id_user'                    => 24,
                'created_at'                 => Carbon::now(),
                'updated_at'                 => Carbon::now(),
            ],
            [
                'cnpj_instituicao'           => '88.999.000/0001-55',
                'verificado_instituicao'     => false,
                'logradouro_instituicao'     => 'Praça da Liberdade',
                'num_logradouro_instituicao' => '321',
                'bairro_instituicao'         => 'Liberdade',
                'cidade_instituicao'         => 'Salvador',
                'estado_instituicao'         => 'BA',
                'cep_instituicao'            => '40000-000',
                'complemento_instituicao'    => '2º andar',
                'id_user'                    => 25,
                'created_at'                 => Carbon::now(),
                'updated_at'                 => Carbon::now(),
            ],
        ];

        DB::table('tb_instituicao')->insert($instituicoes);
    }
}
