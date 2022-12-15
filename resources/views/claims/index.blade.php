@extends('layouts.base')
@section('content')
    <h2 class="mb-4">Мои обращения</h2>
    <div class="col-12 border-1 border-bottom pb-1">
        <a href="{{ route('claims.create') }}" class="pb-2 text-decoration-none text-dark fw-bold">Новое обращение</a>
        <a href="{{ route('claims.index') }}" class="border-bottom border-1 border-danger pb-2 ms-3 text-decoration-none text-dark fw-bold">Мои обращения</a>
    </div>


    @foreach($appeals as $appeal)
        <div class="d-flex flex-column col-9 bg-light p-4 mb-5 rounded-3">
            <div class=" d-flex d-row">
                <div class="col-4 mt-4">
                    <div class="col-12 mb-4">
                        <p class="text-small fw-bold form-label">ФИО</p>
                        <p class="text-wrap-break">{{ $appeal->fio }}</p>
                    </div>
                    <div class="col-12 mb-4">
                        <p class="text-small fw-bold form-label">Адрес</p>
                        <p class="text-wrap-break">{{ $appeal->address }}</p>
                    </div>
                    <div class="col-12 mb-4">
                        <p class="text-small fw-bold form-label">Номер телефона</p>
                        <p>{{ $appeal->phone }}</p>
                    </div>
                    <div class="col-12 mb-4">
                        <p class="text-small fw-bold form-label">E-mail</p>
                        <p class="text-wrap-break">{{ $appeal->email }}</p>
                    </div>
                    <div class="col-12 mb-4">
                        <p class="text-small fw-bold form-label">Тип обращения</p>
                        <p>{{ $appeal->appeal_type->appeal_type }}</p>
                    </div>
                    <div class="col-12 mb-4">
                        <p class="text-small fw-bold form-label">Категория</p>
                        <p>{{ $appeal->category->category }}</p>
                    </div>
                    <div class="col-12 mb-4">
                        <p class="text-small fw-bold form-label">Подкатегория</p>
                        <p>{{ $appeal->subcategory->subcategory }}</p>
                    </div>
                </div>
                <div class="mt-4 ms-5 col-7">
                    <div class="mb-4">
                        <p class="text-small fw-bold form-label">Полное описание ситуации</p>
                        <textarea readonly rows="5" type="text" class="form-control" id="description">{{ $appeal->description }}</textarea>
                    </div>
                    <div class="mb-4">
                        <p class="text-small fw-bold form-label">Дата</p>
                        <p>{{ $appeal->date }}</p>
                    </div>
                    @if ($appeal->img_path)
                        <div class="mb-4">
                            <p class="text-small fw-bold form-label">Изображение</p>
                            <img class="mt-2" style="max-width: 300px; max-height: 300px;" src="{{ 'storage/'.$appeal->img_path }}"/>
                        </div>
                    @endif
                </div>
            </div>
            <div class="d-flex justify-content-between">
                <div class="{{ $appeal->status->id === 1 ? "bg-warning" : "bg-success" }} p-3 rounded-4 text-white me-5 fw-bold">
                    <p class="m-0 p-0" style="font-size: 13px">{{ $appeal->status->status }}</p>
                </div>
                <form action="{{ route('claims.delete', $appeal->id) }}" method="post">
                    @csrf
                    @method('delete')
                    <input class="btn btn-danger p-2 h-100 rounded-4" style="font-size: 13px" type="submit"
                           value="Удалить заявление"/>
                </form>
            </div>
        </div>
    @endforeach
@endsection
