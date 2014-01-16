(function (document) {

    'use strict';
    /*global $:false, window:false, document:false */
    /*jslint white: true */

    function loadIframes() {

        var hash, iframe;
        $('#accordion-client-list a.accordion-toggle').hover(function () {

            console.log('hover');

            hash = $(this).attr('href');
            iframe = $('#accordion-client-list ' + hash + ' iframe');

            if (iframe.attr('src') !== iframe.data('src')) {

                iframe.attr('src', iframe.data('src'));

            }

        });
    }

    function doNotLoadIframesInsteadNavigateToWebsiteOnClick() {
        var toggle, iframe;

        $('#accordion-client-list .panel').each(function () {

            // on click of the link, navigate directly to the website
            iframe = $(this).find('iframe');
            toggle = $(this).find('.accordion-toggle');
            toggle
                .attr('href', iframe.data('src'))
                .removeAttr('data-toggle');
            iframe.hide();
        });
    }

    function switchBetweenShowAndHide() {

        $('#accordion-client-list').on('show.bs.collapse', function () {
            $(this).find(".accordion-show").addClass("hidden");
            $(this).find(".accordion-hide").removeClass("hidden");
        });

        $('#accordion-client-list').on('hide.bs.collapse', function () {
            $(this).find(".accordion-hide").addClass("hidden");
            $(this).find(".accordion-show").removeClass("hidden");

        });

    }

    $(document).ready(function () {

        console.log('bigfont-accordion-iframe.js > ready');

        var width;
        width = $(window).width();

        if (width > 1024) {
            // larger than tablets
            loadIframes();
            switchBetweenShowAndHide();
        }
        else if (width <= 1024) {
            // tablet landscape and below
            doNotLoadIframesInsteadNavigateToWebsiteOnClick();
        }

    });


}(document));