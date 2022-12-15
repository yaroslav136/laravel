<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Appeal extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $guarded = [];

    function category() {
        return $this->belongsTo(ClaimCategory::class, 'claim_category_id', 'id');
    }

    function appeal_type() {
        return $this->belongsTo(AppealType::class, 'appeal_type_id', 'id');
    }

    function subcategory() {
        return $this->belongsTo(ClaimSubcategory::class, 'claim_subcategory_id', 'id');
    }

    function status() {
        return $this->belongsTo(AppealStatus::class, 'status_id', 'id');
    }
}
