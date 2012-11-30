(function () {

    'use strict';
    /*global $:false, window:false, document:false, bigfont_letterhead:false, bigfont_wysiwyg:false, bigfont_carousel:false */
    /*jslint white: true */

    var BASE_URL;

    BASE_URL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port;

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

        var div, button, strong, span, forms, form, isValid, validator, url, data, contentType, jqxhr;

        // get all the contact forms
        forms = $('form.contact-form');

        // on show of any collapsible within any form
        forms.children('.collapse').bind('show', function () {

            // Wrap all alerts with close functionality.
            // This is defensive coding, because it might be unnecessary.
            $(".alert").alert();

            // Close all the alerts within all contact forms.
            forms.find('.alert').alert('close');

            // Close collapsables that are currently open
            $('.collapse.in').collapse('hide');

        });

        // on shown of any collapsible
        forms.children('.collapse').bind('shown', function () {

            var form, newPosition, offsetTop;

            // get the form's position from top
            form = $(this).parents('form');
            offsetTop = form.offset().top;

            // test if the navbar is fixed or not
            // when the navbar is NOT fixed, the collapse & expand button is visible
            if ($('button.btn-navbar').is(':visible')) {

                // navbar is static
                newPosition = offsetTop - 5; // 5px

            } else {

                // navbar is fixed
                newPosition = offsetTop - 50; // 50px

            }

            // scroll to the appropriate position            
            $('html,body').scrollTop(newPosition);

        });

        // on hide of any collapsible within any form
        forms.children('.collapse').bind('hide', function () {

            // get the specific form
            form = $(this).parents('form');
            // form.validate().resetForm();
            form[0].reset();

        });

        // now, for each form
        $.each(forms, function (i) {

            form = $(forms[i]);

            // setup validation
            //            validator = form.validate({
            //                rules: {
            //                    from: {
            //                        required: true,
            //                        email: true
            //                    }
            //                },
            //                messages: {
            //                    from: {
            //                        required: 'Please provide your email.',
            //                        email: 'Please provide a valid email.'
            //                    }
            //                }
            //            });

        });

        // on form submit button click
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

        // if the useragent has javascript
        // then submit with ajax and prevent page redirect
        forms.submit(function () {

            // retrieive the form
            form = $(this);

            // POST to wcf in a way that mimics an html form POST
            jqxhr = $.ajax({
                type: form.attr('method'),
                url: BASE_URL + form.attr('action'),
                data: form.serialize(),
                contentType: 'application/x-www-form-urlencoded',
                dataType: 'text'
            });

            return false;

        });

    }

    $(document).ready(function () {

        setupTheAnchorElementNonLinkBehavior();

        setupTheCollapsingContactForm();

    });

} ());