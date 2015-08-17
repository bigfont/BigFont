(function () {

    'use strict';
    /*global $:false, window:false, document:false */
    /*jslint white: true */

    // 
    // Usuage 
    // --------------------------------------------------
    //
    // <nav id="subnav">
    //     <ul>
    //     </ul>
    // </nav>
    //
    // <section>
    //     <header>
    //         <h1 id="about">About Us</h1>
    //     </header>
    // </section>
    //
    // <section >
    //     <h1 id="about">About Us</h1>
    // </section>
    //

    function createTocListItem(sectionId, sectionTitle, iconClass) {

        var li, a, i;

        // create the li, a, and i
        li = $('<li/>');

        a = $('<a />', {
            href: '#' + sectionId,
            text: sectionTitle
        });

        i = $('<i/>', {
            'class': iconClass
        });

        // mush them together and append to the ul
        i.prependTo(a);
        a.appendTo(li);

        return li;
    }

    function createToc(ulSelector, iconClass) {

        var sectionId, sectionTitle, h, ul, li;

        // get the ul
        ul = $(ulSelector);

        // iterate the sections
        $('section').not('.toc-hidden').each(function () {

            // get the id and title of the h1, h2, h3

            h = $(this)
                .find('h1', 'h2', 'h3', 'h4')
                .first();

            sectionId = h.attr('id');

            if (h[0] != null) {
                // strip out child element text from the title e.g. <small/> and <span/>
                sectionTitle = h[0]
                    .firstChild
                    .textContent;

                li = createTocListItem(sectionId, sectionTitle, iconClass);

                li.appendTo(ul);
            }
        });

        li = createTocListItem("top", "Return to Top", iconClass);
        li.appendTo(ul);
    }

    $(document).ready(function () {

        createToc('#subnav > ul', 'icon-chevron-right');

    });

}());