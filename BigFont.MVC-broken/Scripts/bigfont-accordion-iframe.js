(function (document) {

    'use strict';
    /*global $:false, window:false, document:false */
    /*jslint white: true */

    function loadIframesWhenTheUserHoversOnThePanel() {
        var iframe;
        $('#accordion-client-list .panel').hover(function () {
            iframe = $(this).find("iframe");
            if (iframe.attr('src') !== iframe.data('src')) {
                iframe.attr('src', iframe.data('src'));
            }
        });
    }

    $(document).ready(function () {
        console.log('bigfont-accordion-iframe.js > ready');
        loadIframesWhenTheUserHoversOnThePanel();
    });


}(document));