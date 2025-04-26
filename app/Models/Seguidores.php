<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seguidores extends Model
{
    use HasFactory;
    protected $table = 'tb_seguidores';
    protected $fillable = ['id', 'id_user_seguidor', 
                            'status_seguidores', 'id_user_seguido', 
                            'created_at', 'updated_at' ];

    public $timestamps = false;

        // Relacionamento: quem está sendo seguido
        public function seguindo()
        {
            return $this->belongsTo(User::class, 'id_user_seguidor');
        }
    
        // Relacionamento: quem é o seguidor
        public function seguidor()
        {
            return $this->belongsTo(User::class, 'id_user_seguido');
        }
}
