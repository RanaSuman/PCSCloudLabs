$(document).ready(function () {
    // Check window width and apply scrollToFixed
    var w = window.innerWidth;
    if ($('#menu-jk').length) {
        if (w > 767) {
            $('#menu-jk').scrollToFixed();
        } else {
            $('#menu-jk').scrollToFixed(); // Redundant but may contain future differentiation logic
        }
    }

    // Initialize Owl Carousel
    if ($('.owl-carousel').length) {
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 0,
            nav: true,
            autoplay: true,
            dots: true,
            autoplayTimeout: 5000,
            navText: [
                '<i class="fa fa-angle-left"></i>',
                '<i class="fa fa-angle-right"></i>'
            ],
            responsive: {
                0: { items: 1 },
                600: { items: 1 },
                1000: { items: 1 }
            }
        });
    }

    // Apply scrollToFixed on other elements
    if ($('.your-element').length) {
        $('.your-element').scrollToFixed();
    }
});
