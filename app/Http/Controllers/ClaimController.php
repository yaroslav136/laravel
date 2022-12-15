<?php

namespace App\Http\Controllers;

use App\Models\Appeal;
use App\Models\AppealType;
use App\Models\Category;
use App\Models\ClaimCategory;
use App\News;
use App\Rules\CLaimPhone;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class ClaimController extends Controller
{
    public function index() {
        $appeals = Appeal::orderBy('created_at', 'desc')->where('user_id', auth()->user()->id)->get();
        return view('claims.index', compact('appeals'));
    }

    public function create() {
        $appealTypes = AppealType::all();
        $categories = ClaimCategory::all();
        return view('claims.create', compact('appealTypes', 'categories'));
    }

    public function store() {
        $data = request()->validate([
            "fio" => ["required", "max:255"],
            "address" => ["required", "max:255"],
            "phone" => ["required", new CLaimPhone, 'max:30'],
            "email" => ["required", "email:rfc,dns", "max:255"],
            "appeal_type_id" => ["required", "integer", "exists:appeal_types,id"],
            "claim_category_id" => ["required", "integer", "exists:claim_categories,id"],
            "claim_subcategory_id" => ["required", "integer", "exists:claim_subcategories,id"],
            "description" => ["required", "min:50"],
            "date" => ["required", "date", "date_format:d.m.Y", "before:tomorrow"],
            "img_path" => ["image", "mimes:jpg,bmp,png"],
        ]);

        $data['date'] = Carbon::createFromFormat('m.d.Y', $data['date'])->format('Y-m-d');
        $data['user_id'] = auth()->user()->id;
        $data['status_id'] = 1;

        if (request()->hasFile('img_path')) {
            $path = Storage::disk('appeals_images')->putFile('appeals_images', request()->file('img_path'));
            $data['img_path'] = $path;
        }
        Appeal::create($data);

        return redirect()->route('claims.index');
    }

    public function destroy(Appeal $appeal) {
        if (auth()->user()->id != $appeal->user_id)
            return redirect()->route('claims.index');

        $appeal->delete();
        return redirect()->route('claims.index');
    }
}
