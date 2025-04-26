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
        Schema::create('tb_seguidores', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_user_seguido');
            $table->unsignedBigInteger('id_user_seguidor');
            $table->foreign('id_user_seguido')->references('id')->on('tb_user')->onDelete('cascade');
            $table->foreign('id_user_seguidor')->references('id')->on('tb_user')->onDelete('cascade');
            $table->boolean('status_seguidores');
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
        Schema::dropIfExists('tb_seguidores');
    }
};
