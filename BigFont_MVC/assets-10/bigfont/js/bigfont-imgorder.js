(function () {

    'use strict';
    /*global $:false, window:false, document:false, bigfont_letterhead:false, bigfont_wysiwyg:false, bigfont_carousel:false */
    /*jslint white: true */

    function loadImagesOneByOne() {
        var imgs, img;

        function deferImg(img) {

            img
                .attr('data-src', img.attr('src'))
                .removeAttr('src');

        }

        function loadImg(img) {

            window.console.log('loading ' + img.attr('data-src'));

            img
                .attr('src', img.attr('data-src'))
                .removeAttr('data-src');
        }

        function loadFirstImg() {

            // get the first deferred img
            img = imgs.first();

            if (imgs.length > 0) {

                // remove it from the array
                imgs = imgs.not(img);

                // load it
                loadImg(img);

                // once loaded, load the next img
                img
                    .load(function () {
                        loadFirstImg();
                    });
            }
        }

        // get imgs
        imgs = $('img');

        // defer loading of all imgs
        imgs.each(function () {
            img = $(this);
            deferImg(img);
        });

        // load the first img
        loadFirstImg();
    }

    $(document).ready(function () {
        loadImagesOneByOne();
    });


}());