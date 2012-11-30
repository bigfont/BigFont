(function () {

    'use strict';
    /*global $:false, window:false, document:false, bigfont_letterhead:false, bigfont_wysiwyg:false, bigfont_carousel:false */
    /*jslint white: true */

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

        var div, button, strong, span, form, isValid;

        // get all the contact forms
        form = $('form.contact-form');

        // setup validation
        var validator = form.validate({
            rules: {
                from: {
                    required: true,
                    email: true
                }
            },
            messages: {
                from: {
                    required: 'Please provide your email.',
                    email: 'Please provide a valid email.'
                }
            }
        });

        // on show of collapsable children
        form.children('.collapse').bind('show', function () {

            // Wrap all alerts with close functionality.
            // This is defensive coding, because it might be unnecessary.
            $(".alert").alert();

            // Close all the alerts within this form.
            form.find('.alert').alert('close');

            var id, link, linkOffset, scrollTopCurrent, scrollTopTarget;

            id = $(this).parent().attr('id');
            linkOffset = $('[href*=' + id + ']').offset().top;
            scrollTopCurrent = $('html,body').scrollTop();

            $('html,body').animate({ scrollTop: linkOffset - 200 }, 'slow');

        });

        // on form submit
        form.find('button[type=submit]').click(function () {

            // prevent default behavior if the form is not valid
            isValid = form.valid();

            if (isValid) {

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

                // TODO send the email!   

            }

            // prevent default behavior if the form is not valid
            // otherwise the form will collapse via the bootstrap collapse javascript            
            return isValid;

        });

    }

    $(document).ready(function () {

        setupTheAnchorElementNonLinkBehavior();

        setupTheCollapsingContactForm();

    });

} ());