<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function index() {
        $reviews = Review::orderBy('created_at', 'desc')->paginate(10);
        return view('review.index_create', compact('reviews'));
    }

    public function store() {
        $data = request()->validate([
            'content' => 'required',
        ]);
        $data['authorId'] = auth()->user()->id;
        Review::create($data);
        return redirect()->route('review.index_create');
    }

    public function edit(Review $review) {
        if (auth()->user()->id != $review->authorId)
            return redirect()->route('review.index_create');

        return view('review.edit', compact('review'));
    }

    public function update(Review $review) {
        if (auth()->user()->id != $review->authorId)
            return redirect()->route('review.index_create');

        $data = request()->validate([
            'content' => 'required',
        ]);
        $data['authorId'] = auth()->user()->id;
        $review->update($data);
        return redirect()->route('review.index_create');
    }

    public function destroy(Review $review) {
        if (auth()->user()->id != $review->authorId)
            return redirect()->route('review.index_create');

        $review->delete();
        return redirect()->route('review.index_create');
    }

    public function removeSelected() {
        foreach (request()->all()['ids'] as $id) {
            Review::find($id)->delete();
        }
        return true;
    }
}
