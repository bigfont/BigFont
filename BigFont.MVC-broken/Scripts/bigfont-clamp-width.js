(function () {

    'use strict';
    /*global $:false, window:false, document:false */
    /*jslint white: true */   

    $(document).ready(function () {

        /*
        * Clamped-width. 
        * Usage:
        *  <div data-clampedwidth=".my-parent">This long content will force clamped width</div>
        *
        * Author: LV
        */
        $('[data-clampled-width]').each(function () {

            var elem = $(this);
            var parentPanel = elem.data('clampled-width');
            var resizeFn = function () {
                var sideBarNavWidth =
                    $(parentPanel).width()
                    - parseInt(elem.css('paddingLeft'))
                    - parseInt(elem.css('paddingRight'))
                    - parseInt(elem.css('marginLeft'))
                    - parseInt(elem.css('marginRight'))
                    - parseInt(elem.css('borderLeftWidth'))
                    - parseInt(elem.css('borderRightWidth'));
                elem.css('width', sideBarNavWidth);
            };

            resizeFn();
            $(window).resize(resizeFn);
        });

    });

}());