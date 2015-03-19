$(document).ready(function () {
    
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


});