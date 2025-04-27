<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table ='tb_post';
    protected $fillable = [
        'id',
        'status_post ',
        'conteudo_post	',
        'descricao_post',
        'id_user',
        'created_at',
        'updated_at',

    ];
    
    public function curtidas()
    {
        return $this->hasMany(Curtida::class, 'id_post', 'id');
    }
    public function usuario()
    {
        return $this->belongsTo(User::class, 'id_user'); // 'id_user' é a chave estrangeira no modelo Post
    }
}
