(function () {

    'use strict';
    /*global $:false, window:false, document:false, bigfont_letterhead:false, bigfont_wysiwyg:false, bigfont_carousel:false */

    $(document).ready(function () {

        $("a.non-link").click(function (e) {
            // prevent default and bubbling
            // within a jQuery event handler
            e.preventDefault();
            e.stopPropagation();
        });

        // stuff for the responsive demo page
        $(".resizable").resizable();
        $('.carousel').bind('slid', function (e) {

            var activeItem, activeItemID, li;

            // remove active class from previous item 
            $('li.active').removeClass('active');

            // get the active carousel item
            activeItem = $('.carousel .active');
            activeItemID = activeItem.attr('id');

            // set the current li as active
            li = $('li[data-carousel-item-id=' + activeItemID + ']');
            li.addClass('active');

        });
        $('li[data-carousel-item-id]').click(function (e) {

            var targetItemID, targetItem, targetItemIndex;
            targetItemID = $(this).attr('data-carousel-item-id');
            targetItem = $('div#' + targetItemID);
            targetItemIndex = targetItem.index();
            $('.carousel').carousel(targetItemIndex);

        });
        $('#responsive-demo-modal').on('hidden', function () {
            // restart the carousel
            $('.carousel').carousel();
        })
        // start the carousel
        $('.carousel').carousel();


    });

} ());