@extends('layouts.base')
@section('content')
    <div class="mb-5 d-flex flex-row move-right">
        @include('layouts.ecard')
        <div class="ms-5 border border-danger border-2 rounded-4 d-flex flex-column justify-content-center align-items-center p-2">
            <form action="{{ route('cards.delete', $card->id) }}" method="post" class="mb-4">
                @csrf
                @method('delete')
                <input class="btn btn-danger" type="submit" value="Удалить карту">
            </form>
            <p id="card-balance"><b>Баланс на карте: </b>{{ $card->balance }}</p>
        </div>
    </div>
    <div>
        <p class="col-6 block rounded-4 p-3 h4 text-center" id="pay-succes" style="background-color: #88ff88; display: none;">Оплата произведена успешно!</p>
        <h1>Пополнить баланс проездной карты</h1>
        <form class="col-6" id="card-form" data-action="{{ route('cards.pay') }}" method="POST" enctype="multipart/form-data" novalidate>
            @csrf
            <div class="mb-3">
                <label for="card" class="form-label">Транспортная карта</label>
                <select class="form-select" type="text" name="card_id" id="card">
                    @foreach($cards as $ecard)
                        <option
                            @if($ecard->id === $card->id)
                            selected
                            @endif
                            value="{{ $ecard->id }}">&#128179 {{ $ecard->type." ".number_format($ecard->number, 0, ' ', ' ') }}</option>
                    @endforeach
                    <option value="other-card">Пополнить другую карту</option>
                </select>
{{--                @error('card_id')--}}
{{--                <p>{{ $message }}</p>--}}
{{--                @enderror--}}
                <p hidden id="card_id-error" class="text-danger text-small mt-1"></p>
            </div>
            <div class="mb-3">
                <label for="sum-pay" class="form-label">Сумма пополнения</label>
                <input class="form-control" type="number" name="sum" id="sum-pay" placeholder="Введите сумму">
{{--                @error('sum')--}}
{{--                <p>a2</p>--}}
{{--                @enderror--}}
                <p hidden id="sum-error" class="text-danger text-small mt-1"></p>
            </div>
            <div class="mb-3">
                <label for="methodPay" class="form-label">Способ оплаты</label>
                <select class="form-select" type="text" name="typePay" id="methodPay" disabled>
                    <option selected value="bank-card">Банковская карта</option>
                </select>
                <input hidden name="typePay" value="bank-card"/>
{{--                @error('typePay')--}}
{{--                <p>{{ $message }}</p>--}}
{{--                @enderror--}}
                <p hidden id="typePay-error" class="text-danger text-small mt-1"></p>
            </div>
            @include('cards.pay_form')
{{--            <button type="button" class="btn btn-primary launch" data-toggle="modal" data-target="#staticBackdrop">Ввести реквизиты</button>--}}
            <button type="button" id="checksum" class="btn btn-primary launch">Ввести реквизиты</button>
        </form>
    </div>
@endsection
