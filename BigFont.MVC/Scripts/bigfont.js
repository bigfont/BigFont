(function (document) {

    'use strict';
    /*global $:false, window:false, document:false */
    /*jslint white: true */

    var bootstrapCollapseHideDuration;
    bootstrapCollapseHideDuration = 195; // approx

    function setupTheAnchorElementNonLinkBehavior() {

        // sometimes we want links that do not behave like links
        $("a.non-link").click(function (e) {
            // prevent default and bubbling
            // within a jQuery event handler
            e.preventDefault();
            e.stopPropagation();
            return false;
        });

    }

    function setupNavigationClickHandler() {

        var collapsible, href, doDefault;
        $('nav#subnav a').click(function (e) {

            // if there is a collapsible on the page
            collapsible = $('.in.collapse');
            if (collapsible.length > 0) {

                // ... determine where to navigate...
                href = $(this).attr('href');

                // ... hide the collapsible
                collapsible.collapse('hide');

                // use a timeout, double the duraction to be safe, because the hidden event is early
                window.setTimeout(function () { window.location.hash = href; }, (bootstrapCollapseHideDuration * 2));

                // ... finally, prevent the default behavior
                e.preventDefault();
                doDefault = false;
            }

        });

        return doDefault;

    }

    function initializeTooltips() {
        $("[data-toggle='tooltip']").tooltip();
    }

    function setPowerPointiframeDimensions() {

        // aspect ratio width="402" height="327" comes from the original PowerPoint embed code
        $('.power-point-modal').on('show', function () {

            var iframe, width, height, aspect;

            aspect = 327 / 402;

            width = $(this).width() * 0.90;
            height = width * aspect;

            iframe = $(this).find('iframe');
            iframe.width(width);
            iframe.height(height);

        });

    }

    function killEntrustMarkettingLink() {
        var bigFontCertificateLink = $('aside#entrust-seal > div > div:nth-child(1) > a');
        var entrustMarketingLink = $('aside#entrust-seal > div > div:nth-child(2) > a');
        entrustMarketingLink.prop('href', bigFontCertificateLink.prop('href'));
    }

    function switchWebsiteTitleVersion() {
        var cookieName, cookie, websiteTitle;
        // get the cookie
        cookieName = 'bigfont_ab';
        cookie = $.cookie(cookieName);
        // get the website title div
        websiteTitle = $('div.website-title');
        // switch on the current cookie value       
        if (cookie === null || cookie === 'a') {
            // the current page has (or will have) the default website version
            websiteTitle.removeClass('b');
            // so set a cookie to indicate that next time we want version 'b'
            $.cookie(cookieName, 'b');
        }
        else if (cookie === 'b') {
            // the current page has (or will have) the 'b' website version
            websiteTitle.addClass('b');
            // so set a cookie to indicate that next time we want version 'a'                        
            $.cookie(cookieName, 'a');

        }
    }

    function yourBrowserSucks() {
        var mq, upgrade, message, alert;

        mq = window.Modernizr.mq('only all'); // true if media queries are supported, false if not

        if (mq === false) {

            message =
                "Yikes, your web browser is not supported. Why not upgrade?<br/>" +
                "1. Visit <a href='http://www.browsehappy.com'>BrowseHappy.com</a>.<br/>" +
                "2. Then return to bigfont.ca after you upgrade.<br/>" +
                "Need help? Contact us at 250-538-2337 for more assitance." +
                "<a href='#' class='close' data-dismiss='alert'>&times;</a>";

            alert = $("<div class='container'><div class='row'><div class='span12 alert'>" + message + "</div></div></div>");

            $(".website-title").before(alert);

        }
    }

    function showHideReturnToTopLink() {

        var viewportHeight = $(window).height();
        var bodyHeight = $("body").height();

        if (bodyHeight / viewportHeight < 2) {
            $('footer .return-to-top').hide();
        }
    }

    $(document).ready(function () {

        console.log('bigfont.js > ready');

        yourBrowserSucks();

        setupTheAnchorElementNonLinkBehavior();

        setupNavigationClickHandler();

        initializeTooltips();

        setPowerPointiframeDimensions();

        killEntrustMarkettingLink();

        switchWebsiteTitleVersion();

        showHideReturnToTopLink();

    });

}(document));