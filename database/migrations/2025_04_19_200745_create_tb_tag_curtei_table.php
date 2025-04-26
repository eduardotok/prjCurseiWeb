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
        Schema::create('tb_tag_curtei', function (Blueprint $table) {
            $table->id();
            $table->string('nome_tag_curtei', 50);
            $table->unsignedBigInteger('id_curtei');
            $table->foreign('id_curtei')->references('id')->on('tb_curtei')->onDelete('cascade');
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
        Schema::dropIfExists('tb_tag_curtei');
    }
};
