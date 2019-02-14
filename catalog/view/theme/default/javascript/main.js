$(document).ready(function() {
    awe_backtotop();
    awe_owl();
    check_last_active();

    /********************************************************
     # Tab
     ********************************************************/
    $(".e-tabs:not(.not-dqtab)").each( function(){
        $(this).find('.tabs-title li:first-child').addClass('current');
        $(this).find('.tab-content').first().addClass('current');

        $(this).find('.tabs-title li').click(function(){
            var tab_id = $(this).attr('data-tab');

            var url = $(this).attr('data-url');
            $(this).closest('.e-tabs').find('.tab-viewall').attr('href',url);

            $(this).closest('.e-tabs').find('.tabs-title li').removeClass('current');
            $(this).closest('.e-tabs').find('.tab-content').removeClass('current');

            $(this).addClass('current');
            $(this).closest('.e-tabs').find("#"+tab_id).addClass('current');
        });
    });

    /********************************************************
     # Product description show more
     ********************************************************/
    $('.btn--view-more').on('click', function(e){
        e.preventDefault();
        var $this = $(this);
        $this.parents('#tab-description').find('.product-well').toggleClass('expanded');
        $(this).toggleClass('active');
        return false;
    });
});

/********************************************************
 # BACKTOTOP
 ********************************************************/
function awe_backtotop() {
    /* Back to top */
    if ($('#back-to-top').length) {
        var scrollTrigger = 200, // px
            backToTop = function () {
                var scrollTop = $(window).scrollTop();
                if (scrollTop > scrollTrigger) {
                    $('#back-to-top').addClass('show');
                } else {
                    $('#back-to-top').removeClass('show');
                }
            };
        backToTop();
        $(window).on('scroll', function () {
            backToTop();
        });
        $('#back-to-top').on('click', function (e) {
            e.preventDefault();
            $('html,body').animate({
                scrollTop: 0
            }, 700);
        });
    }
} window.awe_backtotop=awe_backtotop;
/********************************************************
 # OWL CAROUSEL
 ********************************************************/
function awe_owl() {
    $('.owl-carousel:not(.not-aweowl)').each( function(){
        var xs_item = $(this).attr('data-xs-items');
        var md_item = $(this).attr('data-md-items');
        var lg_item = $(this).attr('data-lg-items');
        var sm_item = $(this).attr('data-sm-items');
        var margin=$(this).attr('data-margin');
        var dot=$(this).attr('data-dot');
        var nav=$(this).attr('data-nav');
        var height=$(this).attr('data-height');
        var play=$(this).attr('data-play');
        var loop=$(this).attr('data-loop');
        if (typeof margin !== typeof undefined && margin !== false) {
        } else{
            margin = 30;
        }
        if (typeof xs_item !== typeof undefined && xs_item !== false) {
        } else{
            xs_item = 1;
        }
        if (typeof sm_item !== typeof undefined && sm_item !== false) {

        } else{
            sm_item = 3;
        }
        if (typeof md_item !== typeof undefined && md_item !== false) {
        } else{
            md_item = 3;
        }
        if (typeof lg_item !== typeof undefined && lg_item !== false) {
        } else{
            lg_item = 3;
        }
        if (typeof dot !== typeof undefined && dot !== true) {
            dot= true;
        } else{
            dot = false;
        }
        $(this).owlCarousel({
            loop:loop,
            margin:Number(margin),
            responsiveClass:true,
            dots:dot,
            nav:nav,
            navText: ["",""],
            autoplay:false,
            autoHeight: false,
            autoplayTimeout:3000,
            autoplayHoverPause:true,
            responsive:{
                0:{
                    items:Number(xs_item)
                },
                600:{
                    items:Number(sm_item)
                },
                1000:{
                    items:Number(md_item)
                },
                1200:{
                    items:Number(lg_item)
                }
            }
        }).on('changed.owl.carousel', check_last_active); // check last active owl item
    })
} window.awe_owl=awe_owl;


/* check last active owl-item */
function check_last_active(){
    var x = $('.owl-carousel:not(.slider)');
    setTimeout(function(){
        x.find('.active .product-col-1').css('border-right','1px solid #ebebeb');
        if(x.find('.active').last()){
            x.find('.active:last').find('.product-col-1').css('border-right','none');


        }
    }, 300);
} window.check_last_active = check_last_active;
