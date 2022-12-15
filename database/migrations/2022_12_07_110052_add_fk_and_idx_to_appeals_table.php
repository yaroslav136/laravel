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
        Schema::table('appeals', function (Blueprint $table) {
            $table->unsignedBigInteger('claim_subcategory_id')->after('claim_category_id');
            $table->index('claim_subcategory_id', 'claim_categories_subcategory_idx');
            $table->foreign('claim_subcategory_id', 'claim_categories_subcategory_fk')->on('claim_subcategories')->references('id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('appeals', function (Blueprint $table) {
            $table->dropColumn('claim_subcategory_id');
            $table->dropIndex('claim_categories_subcategory_idx');
            $table->dropForeign('claim_categories_subcategory_fk');
        });
    }
};
