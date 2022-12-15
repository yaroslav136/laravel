<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-right" onclick="$('#staticBackdrop').modal('hide')"><i class="fa fa-close close" data-dismiss="modal"></i></div>
                <div class="tabs ">
                    <div class="nav-link active text-center" id="visa-tab"
                       data-toggle="tab" role="tab"
                       aria-controls="visa" aria-selected="true">
                        <img src="{{ asset('img/logoVisa_Mast_Mir.png') }}" width="80">
                    </div>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="visa" role="tabpanel" aria-labelledby="visa-tab">
                            <div class="mt-4 mx-4">
                                <div class="text-center"><h5>Реквизиты банковской карты</h5></div>
                                <div class="form mt-3">
                                    <div class="inputbox">
                                        <label class="m-0 form-label" for="fio">Держатель карты</label>
                                        <input type="text" id="fio" name="fio" class="form-control" autocomplete="off"
                                               required="required" maxlength="20" placeholder="ФАМИЛИЯ И ИМЯ">
                                        <p hidden id="fio-error" class="text-danger text-small mt-1"></p>
                                    </div>
                                    <div class="inputbox">
                                        <label class="m-0 form-label" for="number-card">Номер карты</label>
                                        <input type="password" id="number-card" name="number_card" min="1" max="999" autocomplete="off"
                                               class="form-control" required="required" placeholder="0000 0000 0000 0000">
                                        <i class="mt-3"><button type="button" id="fa-eye" class="fa fa-eye"></button></i>
                                        <p hidden id="number_card-error" class="text-danger text-small mt-1"></p>
                                    </div>
                                    <div class="d-flex flex-row justify-content-between">
                                        <div class="inputbox maxlength">
                                            <label class="m-0 form-label" for="date">Срок действия</label>
                                            <input type="text" name="date" id="date" min="1" max="999" autocomplete="off"
                                                   class="form-control" required="required" placeholder="ММ/ГГ">
                                            <p hidden id="date-error" class="text-danger text-small mt-1"></p>
                                        </div>
                                        <div class="inputbox maxlength">
                                            <label class="m-0 form-label" for="cvv">CVV код</label>
                                            <input type="text" id="cvv" name="cvv" min="1" max="999" autocomplete="off"
                                                   class="form-control" required="required" pattern="[0-9]*" inputmode="numeric" placeholder="000">
                                            <p hidden id="cvv-error" class="text-danger text-small mt-1"></p>
                                        </div>
                                    </div>
                                    <div class="px-5 pay d-flex justify-content-center">
                                        <button type="submit" id="btn-submit" class="btn btn-success btn-block">Оплатить</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
<script>
    let btnHide = document.getElementById('fa-eye');
    let inputHide = document.getElementById('number-card');
    btnHide.addEventListener("click", () => {
        if (inputHide.type === "text")
            inputHide.setAttribute("type", "password");
        else
            inputHide.setAttribute("type", "text");
    })

    $('#cvv').mask('000', {
        placeholder: "000"
    });
    $('#date').mask('00/00', {
        placeholder: "ММ/ГГ"
    });
    $('#number-card').mask('0000-0000-0000-0000', {
        placeholder: "0000-0000-0000-0000"
    });
</script>

@push('scripts')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
@endpush
