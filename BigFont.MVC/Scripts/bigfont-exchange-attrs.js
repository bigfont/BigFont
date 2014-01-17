(function() {

    'use strict';

/*global $:false, window:false, document:false */
    /*jslint white: true */

    // 
    // Usuage
    // --------------------------------------------------
    // <a>Show Website</a>
    // <a>Hide Website</a>
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
        console.log('currentValue:' + currentValue);
        console.log('newValue:' + newValue);
        return newValue;
    }

    function switchAttributeValues(attributeName, altA, altB, elem) {

        // get the alternative values of the attribute
        var currentValue = elem.attr(attributeName);

        // replace the alternative part of the current value with the alternative
        var newValue = createNewValue(currentValue, altA, altB);
        if (newValue) {
            console.log('switching ' + currentValue + ' for ' + newValue);
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
        elem.children("[data-alt-attributes]").each(function() {

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

    $(document).ready(function() {

        $('[data-alt-attributes]').each(function() {

            var elem = $(this);
            elem.on("click", function() {

                doSomething(elem);

            });
        });

    });

}());