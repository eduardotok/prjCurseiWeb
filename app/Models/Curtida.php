<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Curtida extends Model
{
    protected $table ='tb_curtida';
    protected $fillable = [
        'id',
        'id_user ',
        'id_post',
        'status_curtida',
        'id_storyes',
        'id_curtei',
        'created_at',
        'updated_at',

    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }
    public function post()
    {
        return $this->belongsTo(Post::class, 'id_post', 'id');
    }


}
