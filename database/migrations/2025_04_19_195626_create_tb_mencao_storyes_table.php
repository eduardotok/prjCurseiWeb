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
        Schema::create('tb_mencao_storyes', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_user_mencionado');
            $table->foreign('id_user_mencionado')->references('id')->on('tb_user')->onDelete('cascade');
            $table->unsignedBigInteger('id_storyes');
            $table->foreign('id_storyes')->references('id')->on('tb_storyes')->onDelete('cascade');
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
        Schema::dropIfExists('tb_mencao_storyes');
    }
};
