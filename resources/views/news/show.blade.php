@extends('layouts.base')
@section('content')
    <h2>{{ mb_strtoupper($article->title) }}</h2>
    <img height="150" width="150" class="float-start my-3 me-3" src="{{ asset("storage/".$article->img) }}">
    <p class="mt-4">{{ $article->created_at->format("d.m.Y") }}</p>
    {!! $article->content !!}
    <a href="{{ url()->previous() }}" class="text-decoration-none h5" style="color: #3fa675">← Обратно к списку</a>
@endsection
