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
        Schema::create('tb_planejamento', function (Blueprint $table) {
            $table->id();
            $table->string('nome_planejamento', 100);
            $table->date('data_inicio_planejamento');
            $table->date('data_fim_planejamento');
            $table->boolean('status_planejamento');
            $table->unsignedBigInteger('id_post');
            $table->foreign('id_post')->references('id')->on('tb_post');
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
        Schema::dropIfExists('tb_planejamento');
    }
};
