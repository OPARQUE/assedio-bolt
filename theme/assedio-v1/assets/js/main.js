$(document).ready(function () {

    $('.magnific, div.imageholder a').magnificPopup({
        type: 'image'
    });

    var logoWidth1 = $(".logo-width1");
    var logoWidth2 = $(".logo-width2");

    function widthLogo() {

        if ($(logoWidth1).is(":visible")) {
            var logoMargin = $(".logo-width1").offset().left - 15;
            var logoWidth = $(".logo-width1").width();
        } else {
            var logoMargin = $(".logo-width2").offset().left - 15;
            var logoWidth = $(".logo-width2").width() - 40;
        }

        $(".input-busca-width").css("width", logoWidth);
        $(".hr-width").css("width", logoWidth);
        $(".input-busca-width").css("margin-left", logoMargin);

        $("#menu-principal").css("width", logoWidth);
        $("#menu-principal").css("margin-left", logoMargin);
    }

    function heightSidebar() {
        if ($(window).width() > 768) {
            $(".sidebar-esquerda").css("min-height", $(document).height());
        } else if ($(window).width() < 768) {
            $(".sidebar-esquerda").css("min-height", 0);
        }
    }

    function heightProjetos() {
        var height = $(document).height();

        if ($(window).width() > 992) {
            $(".sobre-projetos").css("height", height);
            $(".sidebar-direita-noticias").css("height", height);
            $(".card-projeto").css("height", height);
            $(".card-biblioteca").css("height", height);
            $(".corpo-projeto").css("height", height);
        } else if ($(window).width() > 768 && $(window).width() < 992) {
            $(".sobre-projetos").css("height", height);
            $(".sidebar-direita-noticias").css("height", "auto");
            $(".card-projeto").css("height", height);
            $(".card-biblioteca").css("height", height);
            $(".corpo-projeto").css("height", height);
        } else {
            $(".sobre-projetos").css("height", "auto");
            $(".sidebar-direita-noticias").css("height", "auto");
            $(".card-projeto").css("height", "auto");
            $(".card-biblioteca").css("height", "auto");
            $(".corpo-projeto").css("height", "auto");
        }
    }
    //SLIDER PROJETOS
    $('.slider-projetos').slick({
        infinite: false,
        autoplay: false,
        slidesToShow: 5,
        slidesToScroll: 1,
        pauseOnHover: false,
        arrows: true,
        responsive: [
            {
                breakpoint: 728,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 1280,
                settings: {
                    slidesToShow: 4
                }
            }
        ]
    });
    //SLIDER BIBLIOTECA
    $('.slider-biblioteca').slick({
        infinite: false,
        autoplay: true,
        slidesToShow: 5,
        slidesToScroll: 1,
        pauseOnHover: false,
        arrows: true,
        responsive: [
            {
                breakpoint: 728,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 1280,
                settings: {
                    slidesToShow: 4
                }
            }
        ]
    });

    //Slider itens-biblioteca
    $('.slider-itens-biblioteca').slick({
        infinite: true,
        autoplay: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        pauseOnHover: true,
        arrows: false,
        fade: true,
        dots: true
    });

    function marginPrevSlickSlider() {
        var width = $(".sobre-projetos").width();

        if ($(window).width() > 768) {
            $(".slick-prev").css("left", width);
        } else if ($(window).width() < 768) {
            $(".slick-prev").css("left", 0);
        }

    }

    function heightMap() {
        var height = $(window).height();

        if ($(window).width() > 991) {
            $("#mapa-galpao").css("height", height);
            $(".about-contato-direita").css("height", height);
        } else if ($(window).width() < 991) {
            $("#mapa-galpao").css("height", 300);
            $(".about-contato-direita").css("height", "auto");
        }
    }

    widthLogo();
    heightSidebar();
    heightProjetos();
    marginPrevSlickSlider();
    heightMap();

    $(window).resize(function () {
        widthLogo();
        heightSidebar();
        heightProjetos();
        marginPrevSlickSlider();
        heightMap();
    });

    var instagram = "https://api.instagram.com/v1/users/1357421768/media/recent/?client_id=864101c769b648289cdc27257505195e&count=1";

    $.ajax({
        type: "GET",
        dataType: 'jsonp',
        url: instagram,
        crossDomain: true
    })
            .done(function (data) {
                var image_instagram = data.data[0].images.standard_resolution.url;
                $('.card-instagram').attr("style", "background-image: url(" + image_instagram + ")");
            })
            .fail(function (xhr, textStatus, errorThrown) {
                console.log(xhr.responseText);
                console.log(textStatus);
                $('.card-instagram').append('<span class="cor4">Não foi possível carregar a imagem do Instagram</span>');
            });

});