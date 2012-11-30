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

        var div, button, strong, span, forms, form, isValid, validator, id;

        // get all the contact forms
        forms = $('form.contact-form');

        // on show of any collapsable within any form
        forms.children('.collapse').bind('show', function () {

            // Wrap all alerts with close functionality.
            // This is defensive coding, because it might be unnecessary.
            $(".alert").alert();

            // Close all the alerts within all contact forms.
            forms.find('.alert').alert('close');

            // Close collapsables that are currently open
            $('.collapse.in').collapse('hide');

            // TODO (nice-to-have) Scroll the page so the the email form is properly positioned

        });

        // on hide of any collapsable within any form
        forms.children('.collapse').bind('hide', function () {

            // get the specific form
            form = $(this).parents('form');
            form.validate().resetForm();
            form[0].reset();

        });

        // now, for each form
        $.each(forms, function (i) {

            form = $(forms[i]);

            // setup validation
            validator = form.validate({
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

        });

        // on form submit
        forms.find('button[type=submit]').click(function () {

            // get the specific form
            form = $(this).parents('form');

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

                // TODO (must-have) send the email!   

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