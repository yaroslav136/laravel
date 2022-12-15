'use strict'


$(document).ready(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $('#remAll').click(function() {
        var inputs = $('input[type="checkbox"]:checked');
        let ids = [];
        inputs.each(function() {
            ids.push($(this).attr("data-id"));
        })
        if (ids.length > 0) {
        var url = $('#remAll').attr('data-route');
            $.ajax({
                url: url,
                data: {
                    ids: ids,
                },
                type: "post",
                success: function success(data) {
                    for (let i = 0; i < ids.length; i++) {
                        let el = $(`[data-id="${ids[i]}"]`)
                        el.parents().eq(1).remove()
                    }
                },
                error: function(response) {
                    console.log("Error");
                    console.log(response)
                }
            });
        }
    });

    $("#checksum").click(function() {
        let form = $("#card-form");
        var url = form.attr('data-action');

        $.ajax({
            url: url,
            method: 'POST',
            data: new FormData(form[0]),
            //dataType: 'JSON',
            contentType: false,
            cache: false,
            processData: false,
            success: function success(data) {
                let els = $("p[id$='-error']");
                for (let i = 0; i < els.length; i++) {
                    els[i].setAttribute("hidden", true)
                }

                if (!data.errors["sum"]) {
                    let el_modal = $("#staticBackdrop")
                    console.log(1212)
                    el_modal.modal('show')
                }
                else {
                    let el = $("#sum-error");
                    el.removeAttr("hidden");
                    el.html(data.errors["sum"]);
                }
            },
            error: function(response) {
                console.log("Error");
                console.log(response)
            }
        })
    })

    var form = '#card-form';
    $(form).on('submit', function(e){
        e.preventDefault();

        var url = $(this).attr('data-action');

        $.ajax({
            url: url,
            method: 'POST',
            data: new FormData(this),
            //dataType: 'JSON',
            contentType: false,
            cache: false,
            processData: false,
            success: function success(data) {
                let els = $("p[id$='-error']");
                for (let i = 0; i < els.length; i++) {
                    els[i].setAttribute("hidden", true)
                }

                console.log(Object.keys(data.errors).length)
                if (Object.keys(data.errors).length > 0) {
                    console.log("here1")
                    for (let [key, value] of Object.entries(data.errors)) {
                        //console.log("#" + key + "-error");
                        let el = $("#" + key + "-error");
                        // console.log(el);
                        el.removeAttr("hidden");
                        el.html(value);
                    }
                }
                else {
                    let el_modal = $("#staticBackdrop")
                    el_modal.modal('hide')

                    $("#card-form")[0].reset();

                    $("#pay-succes").show();
                    setTimeout(function() { $("#pay-succes").hide(); }, 5000);

                    $("#card-balance").html("<b>Баланс на карте: </b>" + data.balance);
                }
            },
            error: function(response) {
                console.log("AAAAAAAAAAAAAAAAA " );
                console.log(response)
            }
        });
    });
});
