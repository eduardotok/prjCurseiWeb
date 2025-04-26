<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ConteudoCurtei extends Model
{
    use HasFactory;

    protected $table = 'tb_conteudo_curtei';

    protected $fillable = [
        'conteudo_curtei_1',
        'conteudo_curtei_2',
        'conteudo_curtei_3',
        'conteudo_curtei_4',
        'conteudo_curtei_5',
    ];

    public function curteis()
    {
        return $this->hasMany(Curtei::class, 'id_conteudo_curtei');
    }
}
