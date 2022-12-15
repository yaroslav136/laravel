<div class="card-debit">
    <div class="card-1">
        <div class="d-flex justify-content-end p-3">
            <img src="{{ asset('img/logo_ekarta.png') }}">
        </div>
        <div class="card-info-1 text-white">
            <p>ТРАНСПОРТ ЕКАТЕРИНБУРГА</p>
            <p>метро / трамвай / троллейбус / автобус</p>
        </div>
        <div class="card-info-2 text-end fw-bold">
            <p>КАРТА ПАССАЖИРА</p>
            <p class="text-small">№ {{ number_format($card->number, 0, ' ', ' ') }}</p>
        </div>
    </div>
    <div class="d-flex flex-row card-2 d-flex justify-content-between">
        <div class="card-bottom-left text-break">
            <p>Справочная служба : +7 (343) 222-000-9 www.ekarta-ek.ru</p>
        </div>
        <p class="card-bottom-right me-2">$card->number</p>
    </div>
</div>
