(function () {

    'use strict';
    /*global $:false, window:false, document:false, bigfont_letterhead:false, bigfont_wysiwyg:false, bigfont_carousel:false */

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

    function setupTheCollapsingContactForm() {

        var div, button, strong, span, form;

        // get all the contact forms
        form = $('form.contact-form');

        // on show of collapsable children
        form.children('.collapse').bind('show', function (e) {

            // Wrap all alerts with close functionality.
            // This is defensive coding, because it might be unnecessary.
            $(".alert").alert();

            // Close all the alerts within this form.
            form.find('.alert').alert('close');            

        });

        // on form submit
        form.find('button[type=submit]').click(function (e) {        

            // create the success alert box
            div = $('<div/>', { 'class': 'alert alert-success' });
            button = $('<button/>', { type: 'button', 'class': 'close', 'data-dismiss': 'alert', html: 'x' });
            strong = $('<strong/>', { html: 'Thank you.&nbsp' });
            span = $('<span/>', { html: 'We will reply shortly.' });
            div.append(button);
            div.append(strong);
            div.append(span);

            // show the success alert box
            form.append(div);

            // send the email!            

        });

    }

    $(document).ready(function () {

        setupTheAnchorElementNonLinkBehavior();

        setupTheCollapsingContactForm();

    });

} ());