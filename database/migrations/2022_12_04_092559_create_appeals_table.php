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
        Schema::create('appeals', function (Blueprint $table) {
            $table->id();

            $table->string('fio');
            $table->string('address');
            $table->string('phone', 30);
            $table->string('email');
            $table->text('description');
            $table->date('date');
            $table->string('img_path')->nullable();

            $table->unsignedBigInteger('appeal_type_id');
            $table->unsignedBigInteger('claim_category_id');
            $table->index('appeal_type_id', 'appeal_appealtype_idx');
            $table->index('claim_category_id', 'appeal_claimcategory_idx');
            $table->foreign('appeal_type_id', 'appeal_appealtype_fx')->on('appeal_types')->references('id');
            $table->foreign('claim_category_id', 'appeal_claimcategory_fx')->on('claim_categories')->references('id');

            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('appeals');
    }
};
