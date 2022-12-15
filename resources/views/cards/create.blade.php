@extends('layouts.base')
@section('content')
    <h1>Добавить проездную карту</h1>
    <form class="col-6" action="{{ route('cards.store') }}" method="post" autocomplete="off">
        @csrf
        <label for="card" class="form-label">Номер карты</label>
        <input type="text" autocomplete="off" name="number" value="{{ old('number') }}" id="card" class="form-control" aria-describedby="cardHelpBlock" placeholder="0123456789">
        @error('number')
            <p class="text-danger">вы непрвильно ввели номер карты</p>
        @enderror
        <button type="submit" class="mt-3 btn btn-primary">Добавить</button>
    </form>
@endsection
