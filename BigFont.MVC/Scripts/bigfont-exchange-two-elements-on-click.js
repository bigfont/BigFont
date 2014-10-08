(function () {

    'use strict';
    /*global $:false, window:false, document:false */
    /*jslint white: true */

    // 
    // Usuage
    // --------------------------------------------------
    // <a data-exchange-id="myUniqueID" data-exchange-state="show">Show Website</a>
    // <a data-exchange-id="myUniqueID" data-exchange-state="hide">Hide Website</a>
    //
     
    function makeTheNarrowerElementTheSameWidthAsTheWiderElement(a, b) {

        if (a.width() < b.width()) {
            a.width(b.width());
        } else {
            b.width(a.width());
        }
    }

    function setupEventHandler(elem, buddy, event) {
        elem.on(event, function () {
            console.log(elem.attr("id"));
            console.log(buddy.attr("id"));

            buddy.show();
            elem.hide();
        });
    }

    $(document).ready(function () {

        console.log("bigfont-exchange-two-elements-on-click");

        $('[data-exchange-id]').each(function () {

            var elem = $(this);
            var exchangeId = elem.data("exchange-id");
            var exchangeState = elem.data("exchange-state");
            var buddy = $("[data-exchange-id='" + exchangeId + "']");

            if (exchangeState === "hide") {
                elem.hide();
            }

            makeTheNarrowerElementTheSameWidthAsTheWiderElement(elem, buddy);

            setupEventHandler(elem, buddy, "click");
        });

    });

}());