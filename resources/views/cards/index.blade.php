@extends('layouts.base')
@section('content')
    <div data-aos="fade-in" id="cardSlider" class="sliderPros ">
        @foreach($cards as $card)
        <a class="sliderPros__item text-decoration-none text-black" href="{{ route('cards.show', $card->id) }}">
            @include('layouts.ecard')
        </a>
        @endforeach
        <div class="sliderPros__item">
            <div class="add_card">
                <a href="{{ route('cards.create') }}" class="text-decoration-none">
                    <div class="h-100 d-flex justify-content-center flex-column align-items-center">
                        <img alt="plus" width="80px" src="https://pngimg.com/uploads/plus/plus_PNG100.png">
                        <p class="mt-3 text-dark h5">Нажмите, чстобы добавить карту</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
@endsection
