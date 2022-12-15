<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClaimCategory extends Model
{
    use HasFactory;
    protected $guarded = [];

    function subcategories() {
        return $this->belongsToMany(ClaimSubcategory::class, 'category_subcategories', 'claim_category_id', 'claim_subcategory_id');
    }
}
