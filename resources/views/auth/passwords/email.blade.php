@extends('layouts.base')
@section('content')
    <div class="container">
        <div class="d-flex justify-content-center">
            <div class="card text-center" style="width: 400px;">
                <div class="card-header h5 text-white bg-primary">Восстановление пароля</div>
                <div class="card-body px-5">
                    <p class="card-text py-2">
                        Введите свой адрес электронной почты, и мы отправим вам электронное письмо с инструкциями по сбросу пароля
                    </p>
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Почта">

                        @error('email')
                        <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                        @enderror
                        <button type="submit" class="btn btn-primary w-100 mt-5">Восстановить пароль</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endsection
