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
        Schema::create('tb_conteudo_curtei', function (Blueprint $table) {
            $table->id();
            $table->string('conteudo_curtei_1')->nullable();
            $table->string('conteudo_curtei_2')->nullable();
            $table->string('conteudo_curtei_3')->nullable();
            $table->string('conteudo_curtei_4')->nullable();
            $table->string('conteudo_curtei_5')->nullable();
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
        Schema::dropIfExists('tb_conteudo_curtei');
    }
};
