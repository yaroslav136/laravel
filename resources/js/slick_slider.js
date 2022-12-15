$(document).ready(function(){
    $('#cardSlider').slick({
        arrows:true,
        dots:true,
        slidesToShow:3,
        speed:500,
        infinite: true,
        //сделать выделение центральной, будет снизу показывать баланс, можно удалить карту
        responsive:[
            {
                breakpoint: 1400,
                settings: {
                    slidesToShow:2,
                }
            },
            {
                breakpoint: 1000,
                settings: {
                    slidesToShow:1
                }
            },
        ]
    });

    $('#cardSlider').slick('setPosition');

});
