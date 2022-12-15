@extends('layouts.base')
@section('content')
    <div id="map" class="map"></div>
@endsection

@push('scripts')
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&amp;apikey=2e215ac5-6655-410e-bb14-9021a866cf91" type="text/javascript"></script>
    <script src="{{ asset('js/ymaps.js') }}"></script>
@endpush
