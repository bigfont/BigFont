(function () {

    'use strict';
    /*global $:false, window:false, document:false */
    /*jslint white: true */

    function createTOC(ulSelector, iconClass) {

        var sectionID, sectionTitle, ul, li, a, i;

        // get the ul
        ul = $(ulSelector);

        // iterate the sections
        $('section').not('.toc-ignore-section').each(function () {

            // get the section id and title
            sectionID = $(this).attr('id');
            sectionTitle = $(this)
                .find('h1', 'h2', 'h3', 'h4')
                .first()[0]
                .firstChild
                .textContent;

            // create the li, a, and i
            li = $('<li/>');

            a = $('<a />', {
                href: '#' + sectionID,
                text: sectionTitle
            });

            i = $('<i/>', {
                'class': iconClass
            });

            // mush them together and append to the ul
            i.prependTo(a);
            a.appendTo(li);
            li.appendTo(ul);

        });
    }

    $(document).ready(function () {

        createTOC('#subnav > ul', 'icon-chevron-right');

    });

}());