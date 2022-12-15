@extends('layouts.base')
@section('content')
    <h1 hidden>Главная страница</h1>
    <h2>Новости</h2>
    <div>
        @foreach($articles as $article)
            <div class="col-8 d-flex flex-row rounded-4 border border-1 my-3">
                <div class="p-2">
                    <img width="150" height="150" src="{{ asset("storage/".$article->img) }}">
                </div>
                <div class="mx-3 my-2">
                    <p class="text-muted text-small">{{ $article->created_at->format("d.m.Y") }}</p>
                    <a href="{{ route('news.show', $article->id) }}" class="h5" style="color: #3fa675">
                        <p>{{ $article->title }}</p>
                        <p>Подробнее...</p>
                    </a>
                </div>
            </div>
        @endforeach
        <div>
            {{ $articles->links('pagination::bootstrap-4') }}
        </div>
    </div>

    <h2 class="mt-5">Карта станций</h2>
    <div id="map" class="map"></div>
@endsection

@push('scripts')
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=2e215ac5-6655-410e-bb14-9021a866cf91" type="text/javascript"></script>
    <script defer src="{{ asset('js/ymaps.js') }}"></script>
@endpush
