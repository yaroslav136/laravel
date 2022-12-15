@extends('layouts.base')
@section('content')
    <h2 class="mb-4">Официальное обращение</h2>
    <div class="col-12 border-1 border-bottom pb-1">
        <a href="{{ route('claims.create') }}" class="border-bottom border-1 border-danger pb-2 text-decoration-none text-dark fw-bold">Новое обращение</a>
        <a href="{{ route('claims.index') }}" class="ms-3 text-decoration-none text-dark fw-bold">Мои обращения</a>
    </div>
    <form action="{{ route('claims.store') }}" class="col-9 d-flex d-row" enctype="multipart/form-data" method="post">
        @csrf
        <div class="col-6 mt-4">
            <div class="col-12 mb-4">
                <label for="fio" class="form-label">ФИО</label>
                <input type="text" class="form-control" name="fio" id="fio" value="{{ old('fio') }}" placeholder="Укажите ваши полные ФИО">
                @error('fio')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="col-12 mb-4">
                <label for="address" class="form-label">Адрес</label>
                <input type="text" class="form-control" name="address" id="address" value="{{ old('address') }}" placeholder="Укажите свой адрес">
                @error('address')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="col-12 mb-4">
                <label for="phone" class="form-label">Номер телефона</label>
                <input type="tel" class="form-control" name="phone" id="phone" value="{{ old('phone') }}" placeholder="+7(___) ___-__-__">
                @error('phone')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="col-12 mb-4">
                <label for="email" class="form-label">E-mail</label>
                <input type="text" class="form-control" name="email" id="email" value="{{ Auth::user()->email }}" placeholder="example@mail.ru">
                @error('email')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="col-12 mb-4">
                <label for="appeal" class="form-label">Тип обращения</label>
                <select class="form-select" name="appeal_type_id" id="appeal">
                    <option hidden value=""></option>
                    @foreach($appealTypes as $appealType)
                        <option value="{{ $appealType->id }}" {{ $appealType->id == old("appeal_type_id") ? 'selected' : '' }}>{{ $appealType->appeal_type }}</option>
                    @endforeach
                </select>
                @error('appeal_type_id')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="col-12 mb-4">
                <label for="category" class="form-label">Категория</label>
                <select class="form-select" name="claim_category_id" id="category" onchange="selectSubcategories(this.value)">
                    <option hidden value=""></option>
                    @foreach($categories as $category)
                        <option value="{{ $category->id }}" {{ $category->id == old("claim_category_id") ? 'selected' : '' }}>{{ $category->category }}</option>
                    @endforeach
                </select>
                @error('claim_category_id')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="col-12 mb-4">
                <label for="subcategory" class="form-label">Подкатегория</label>
                <select class="form-select" name="claim_subcategory_id" id="subcategory">
                    <option hidden value=""></option>
                </select>
                @error('claim_subcategory_id')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>

            <button class="btn btn-success float-end p-3 px-4" type="submit">Отправить</button>
        </div>
        <div class="mt-4 ms-5 col-6">
            <div class="mb-4">
                <label for="description" class="form-label">Полное описание ситуации</label>
                <textarea rows="5" type="text" class="form-control" name="description" id="description" placeholder="Опишите ситуацию подробно">{{ old('description') }}</textarea>
                @error('description')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mb-4">
                <div class="d=flex flex-column">
                    <label for="date" class="col-form-label">Дата происшествия</label>
                    <div class="input-group date" id="datepicker">
                        <input type="text" name="date" value="{{ old('date') }}" autocomplete="off" class="form-control" placeholder="__.__.____">
                        <span class="input-group-append">
                            <span class="input-group-text bg-white d-block">
                                <i class="fa fa-calendar"></i>
                            </span>
                        </span>
                    </div>
                </div>
                @error('date')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mb-4">
                <label for="img" class="form-label">Прикрипите фотографию</label>
                <input class="form-control" type="file" name="img_path" id="img_input" onchange="preview()">
                <img class="mt-2" style="max-width: 170px; max-height: 300px;" id="img_claim" src=""/>
                @error('img_path')
                    <p class="text-danger text-small mt-1">{{ $message }}</p>
                @enderror
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(function() {
            $('#datepicker').datepicker({
                format: 'dd.mm.yyyy'
            });
        });

        function preview() {
            img_claim.src = URL.createObjectURL(event.target.files[0]);
        }

        function selectSubcategories(val) {
            @foreach($categories as $category)
                if (val == {{ $category->id }}) {
                    var els = {!! json_encode($category->subcategories) !!};
                }
            @endforeach

            if (els != null) {
                let options = '<option hidden value=""></option>\n'
                for (let i = 0; i < els.length; i++) {
                    options += `<option value=${els[i].id} ${("{{ old('claim_subcategory_id') }}" == els[i].id) ? 'selected' : ''}>${els[i].subcategory}</option>\n`
                }

                $('#subcategory').html(options)
            }

        }

        $("#phone").mask("+7(999) 999-99-99");

        document.addEventListener('DOMContentLoaded', function() {
            selectSubcategories($('#category').val())
        }, false);
    </script>
@endsection

@push('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
@endpush

@push('styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
@endpush
