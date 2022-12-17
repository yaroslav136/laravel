<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Екатеринбургский метрополитен') }}</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
    @stack('scripts')
    @stack('styles')
</head>
<body class="bg-white">
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
    <div class="container">
        <a href="/" class="col-md-3 mb-2 mb-md-0 text-dark text-decoration-none navbar-brand d-block" style="width: 300px">
            <img width="300" src="{{ asset('img/logo.png') }}">
        </a>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav w-100">
                <a href="{{ route('cards.index') }}" class="nav-link px-2 text-black fw-bold">Проездные карты</a>
                <a href="{{ route('claims.create') }}" class="nav-link px-2 text-black fw-bold">Обращения</a>
                <a href="{{ route('review.index_create') }}" class="nav-link px-2 text-black fw-bold">Отзывы</a>
                <a href="{{ route('map') }}" class="nav-link px-2 text-black fw-bold me-auto">Карта станций</a>
                <ul class="nav-link ms-2" style="height: 25px; margin-top: -10px;">
                    @guest
                        @if (Route::has('login'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">Войти</a>
                            </li>
                        @endif

                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">Зарегистрироваться</a>
                            </li>
                        @endif
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                               data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">Выйти</a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>

        <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>

<main class="container my-5" style="min-height: calc(100vh - 388px);">
    @yield('content')
</main>

<footer class="footer mt-auto p-4 bg-light border-top d-flex flex-column mt-5">
    <div class="container">
        <div class="d-flex flex-row flex-wrap">
            <div class="mb-5">
                <a href="/"><img width="300" src="{{ asset("img/logo.png") }}" alt="Логотип метро екатеринбурга"></a>
            </div>
            <ul class="navbar-nav me-auto" style="margin-left: auto">
                <ul class="nav justify-content-end">
                    <li class="nav-item"><a href="{{ route('cards.index') }}" class="nav-link px-2 text-black fw-bold">Проездные карты</a></li>
                    <li class="nav-item"><a href="{{ route('claims.create') }}" class="nav-link px-2 text-black fw-bold">Обращения</a></li>
                    <li class="nav-item"><a href="{{ route('review.index_create') }}" class="nav-link px-2 text-black fw-bold">Отзывы</a></li>
                    <li class="nav-item"><a href="{{ route('map') }}" class="nav-link px-2 text-black fw-bold">Карта станций</a></li>
                </ul>
            </ul>
        </div>
        <div class="justify-content-between d-flex">
            <div class="col-md-4">
                <div class="text-muted m-0 mb-2 address-img ms-4">Фактический и юридический адрес:</div>
                <p class="m-0 fw-semibold">620014, г.Екатеринбург, а/я 399,</p>
                <p class="m-0 fw-semibold">620077, г.Екатеринбург, ул.Володарского д.3</p>
            </div>
            <div class="col-md-2">
                <div class="text-muted m-0 mb-2 email-img ms-4">Почта:</div>
                <p class="m-0 fw-semibold">n@metro-ektb.ru</p>
            </div>
            <div class="col-md-4">
                <div class="text-muted m-0 mb-2 phone-img ms-4">Телефон:</div>
                <p class="m-0 h3">+7 (343) 358-00-04</p>
            </div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="{{ asset('js/ajax-posts.js') }}" defer></script>
</body>
</html>
