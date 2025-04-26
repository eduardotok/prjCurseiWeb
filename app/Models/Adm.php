<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Adm extends Authenticatable
{
    protected $table = 'tb_admin';

protected $fillable = [
    'nome_admin',
    'email_admin',
    'senha_admin',
    'token_admin',
    'img_admin',
    'created_at',
    'updated_at',
];
protected $hidden = [
    'senha_admin',
];

protected $casts = [
    'senha_admin' => 'hashed',
];
}
