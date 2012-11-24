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

        if ($('#no-scrollspy').length > 0) {
            // turn off scroll spy
            $('body').removeAttr('data-spy');
            $('body').removeAttr('data-target');
            $('body').removeAttr('data-offset');
        }

    });

} ());