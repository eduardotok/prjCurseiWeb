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
        Schema::create('tb_curtida', function (Blueprint $table) {
            $table->id();
            $table->boolean('status_curtida');
            $table->unsignedBigInteger('id_user')->nullable();
            $table->foreign('id_user')->references('id')->on('tb_user')->onDelete('cascade');
            $table->unsignedBigInteger('id_post')->nullable();
            $table->foreign('id_post')->references('id')->on('tb_post')->onDelete('cascade');
            $table->unsignedBigInteger('id_storyes')->nullable();
            $table->foreign('id_storyes')->references('id')->on('tb_storyes')->onDelete('cascade');
            $table->unsignedBigInteger('id_curtei')->nullable();
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
        Schema::dropIfExists('tb_curtida');
    }
};
