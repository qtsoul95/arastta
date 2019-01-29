$(document).ready(function() {
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
