<?php

namespace App\Http\Controllers;

use App\News;

class MainController extends Controller
{
    public function index() {

        //$articles = News::all();
        $articles = News::orderBy('created_at', 'desc')->paginate(5);
        return view('index', compact('articles'));
    }

    public function show(News $article) {
        return view('news.show', compact('article'));
    }

    public function showMap() {
        return view('news.index');
    }
}
