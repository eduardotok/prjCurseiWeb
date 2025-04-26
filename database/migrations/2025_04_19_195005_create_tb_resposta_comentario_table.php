<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_resposta_comentario', function (Blueprint $table) {
            $table->id();
            $table->string('resposta_comentario');
            $table->boolean('status_resposta_comentario');
            $table->unsignedBigInteger('id_user');
            $table->unsignedBigInteger('id_comentario');
            $table->foreign('id_user')->references('id')->on('tb_user')->onDelete('cascade');
            $table->foreign('id_comentario')->references('id')->on('tb_comentario')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_resposta_comentario');
    }
};
