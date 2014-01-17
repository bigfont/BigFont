(function () {

    'use strict';

    /*global $:false, window:false, document:false */
    /*jslint white: true */

    // 
    // Usuage - the following usuage uses the Bootstrap 3.0.3 Collapse as the trigger.
    // --------------------------------------------------
    // <a class="btn btn-default"
    //      data-parent="#accordion-client-list"
    //      data-toggle="collapse"
    //      data-alt-attributes='{ "class": [ "btn-default", "btn-info" ], "text": [ "Show Website", "Hide Website" ] }'
    //      data-alt-trigger-selector="#@(uniqueID)"
    //      data-alt-trigger-event="show.bs.collapse hide.bs.collapse"
    //      href="#@(uniqueID)">
    //          <i class="icon-arrow-down" data-alt-attributes='{ "class": [ "icon-arrow-down", "icon-arrow-up" ] }'>&nbsp;</i>Show Website
    // </a>
    //

    function createNewValue(currentValue, altA, altB) {

        var newValue = null;
        if (currentValue) {
            if (currentValue.indexOf(altA) >= 0) {
                newValue = currentValue.replace(altA, altB);
            } else {
                newValue = currentValue.replace(altB, altA);
            }
        }

        return newValue;
    }

    function switchAttributeValues(attributeName, altA, altB, elem) {

        // get the alternative values of the attribute
        var currentValue = elem.attr(attributeName);

        // replace the alternative part of the current value with the alternative
        var newValue = createNewValue(currentValue, altA, altB);

        if (newValue) {
            elem.attr(attributeName, newValue);
        }
    }

    function switchTextValues(altA, altB, elem) {

        var currentValue = elem.html();
        // replace the alternative part of the current value with the alternative
        var newValue = createNewValue(currentValue, altA, altB);
        if (newValue) {
            elem.html(newValue);
        }

    }

    function doSomething(elem) {

        var obj = elem.data("alt-attributes");

        // make it recursive on children
        elem.children("[data-alt-attributes]").each(function () {

            var child = $(this);
            doSomething(child);

        });

        for (var attributeName in obj) {

            var altValues = obj[attributeName].slice();
            var altA = altValues.pop();
            var altB = altValues.pop();

            if (typeof elem.attr(attributeName) !== 'undefined') {

                switchAttributeValues(attributeName, altA, altB, elem);

            } else if (attributeName === "text") {

                switchTextValues(altA, altB, elem);

            }
        }
    }

    $(document).ready(function () {

        $('[data-alt-attributes]').each(function () {

            var elem = $(this);

            var triggerSelector = elem.data('alt-trigger-selector');
            var triggerEventName = elem.data('alt-trigger-event');

            if (triggerSelector) {

                var triggerElement = $(triggerSelector);

                if (triggerElement) {

                    triggerElement.on(triggerEventName, function () {

                        doSomething(elem);

                    });

                }
            }
        });

    });

}());