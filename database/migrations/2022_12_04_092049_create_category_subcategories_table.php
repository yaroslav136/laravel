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
        Schema::create('category_subcategories', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('claim_category_id');
            $table->unsignedBigInteger('claim_subcategory_id');

            $table->index('claim_category_id', 'category_subcategory_category_idx');
            $table->index('claim_subcategory_id', 'category_subcategory_subcategory_idx');

            $table->foreign('claim_category_id', 'category_subcategory_category_fk')->on('claim_categories')->references('id');
            $table->foreign('claim_subcategory_id', 'category_subcategory_subcategory_fk')->on('claim_subcategories')->references('id');

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
        Schema::dropIfExists('category_subcategories');
    }
};
