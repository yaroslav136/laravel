@extends('layouts.base')
@section('content')
    <div class="mb-5">
        <form action="{{ route('review.update', $review->id) }}" method="post">
            @csrf
            @method('patch')
            <div class="form-floating">
                <input name="content" value="{{ $review->content }}" type="text" class="form-control" id="floatingPassword" placeholder="Введите имя пользователя">
                <label for="floatingPassword">Текст отзыва</label>
            </div>
            @error('content')
                <p class="text-danger text-small mt-1">{{ $message }}</p>
            @enderror
            <button type="submit" class="mt-4 btn btn-primary">Изменить</button>
        </form>
    </div>
@endsection
