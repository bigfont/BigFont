/*global $, window, document*/

(function ($, window, document) {

    'use strict';

    //
    // Usuage
    // --------------------------------------------------
    //
    // <div id="hash-navigation">
    //     <section>
    //         <header>
    //             <h1 id="about">About Us</h1>
    //         </header>
    //     </section>
    //
    //     <section >
    //         <h1 id="about">About Us</h1>
    //     </section>
    // </div>

    var sections;

    function getHashFromLinkElement(link)
    {
        var href,
            index,
            hash;

        href = $(link).prop('href');
        index = href.lastIndexOf('#');
        hash = href.substring(index, href.length);
        return hash;
    }

    function hideAllSections() {
        sections = $(".hash-navigation > section");
        sections.hide();
    }

    function showTargetSection(hash) {

        var a,
            h1,
            targetSection;

        if (hash === '')
        {
            a = $("#subnav li:not(.contact)").first().find("a");
            hash = getHashFromLinkElement(a);
        }

        a = $("#subnav a[href='" + hash + "']");
        a.parent().addClass("active");

        h1 = sections.find(hash);

        // get the first 'section' ancestor
        targetSection = h1.parent();
        while (targetSection.prop('nodeName').toLowerCase() !== 'section') {
            targetSection = targetSection.parent();
        }

        targetSection.show();
    }

    function handleSubnavigation() {

        var href,
            hash,
            index;

        $('#subnav a').click(function () {

            $("#subnav li.active").removeClass("active");
            $(this).parent().addClass("active");

            hash = getHashFromLinkElement(this);
            console.log(hash);

            hideAllSections();
            showTargetSection(hash);

        });
    }

    function disableScrollspy()
    {
        $("body").removeAttr('data-spy');
    }

    $(document).ready(function () {

        disableScrollspy();

        hideAllSections();
        showTargetSection(window.location.hash);

        handleSubnavigation();
    });

}($, window, document));