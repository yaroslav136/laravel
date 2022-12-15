@extends('layouts.base')
@section('content')
    <div class="mb-5">
        <form action="{{ route('review.store') }}" method="post">
            @csrf
            <div class="form-floating">
                <input name="content" type="text" class="form-control" id="floatingPassword" placeholder="Введите имя пользователя">
                <label for="floatingPassword">Текст отзыва</label>
            </div>
            @error('content')
                <p class="text-danger text-small mt-1">{{ $message }}</p>
            @enderror
            <button type="submit" class="mt-4 btn btn-primary">Добавить отзыв</button>
        </form>
    </div>
    <ul class="list-group">
        @foreach($reviews as $review)
            <div class="bg-light p-3 rounded mb-4 row">
                <div class="col-10">
                    <p class="h3">{{ $review->name }}</p>
                    <p class="lead text-wrap-break">{{ $review->content }}</p>
                </div>
                @if (auth()->user()->id === $review->authorId)
{{--                    <div class="position-absolute top-0 end-0 p-2 mt-3 d-flex flex-column">--}}
                    <div class="col-2 text-xl-end">
                        <p class="text-muted p-2 m-0">{{ $review->created_at->format('Y-m-d H:i') }}</p>
                        <a class="d-block mb-3" href="{{ route('review.edit', $review->id) }}">Редактировать</a>
                        <input class="float-end d-block" id="delete_review" type="checkbox" data-id="{{ $review->id }}">
{{--                        <form action="{{ route('review.delete', $review->id) }}" method="post">--}}
{{--                            @csrf--}}
{{--                            @method('delete')--}}
{{--                            <input class="link-blue p-0" type="submit" value="Удалить"></input>--}}
{{--                        </form>--}}
                    </div>
                @endif
            </div>
        @endforeach

        <div class="d-flex flex-row justify-content-between">
            {{ $reviews->links('pagination::bootstrap-4') }}
            <button type="button" id="remAll" data-route="{{ route('review.removeSelected') }}" class="btn btn-danger">Удалить выделенные</button>
        </div>
    </ul>
@endsection
