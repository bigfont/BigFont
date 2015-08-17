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

    function hideAllSections() {
        sections = $(".hash-navigation > section");
        sections.hide();
    }

    function showTargetSection(hash) {

        var a,
            h1,
            targetSection;

        a = $("#subnav a[href=" + hash + "]");
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

            href = $(this).prop('href');
            index = href.lastIndexOf('#');
            hash = href.substring(index, href.length);

            hideAllSections();
            showTargetSection(hash);

        });
    }

    $(document).ready(function () {

        $("body").removeAttr('data-spy');


        hideAllSections();
        showTargetSection(window.location.hash);

        handleSubnavigation();
    });

}($, window, document));