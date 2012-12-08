(function () {

    'use strict';
    /*global $:false, window:false, document:false, bigfont_letterhead:false, bigfont_wysiwyg:false, bigfont_carousel:false */
    /*jslint white: true */

    var BASE_URL, BOOTSTRAP_COLLAPSE_DURATION;

    BASE_URL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port;
    BOOTSTRAP_COLLAPSE_DURATION = 600;

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

    function expandTheCollapsingContactFormBySectionHash(hash) {

        $('section' + hash + ' ' + '.collapse').collapse('show');

    }

    function repositionTheCollapsingContactForm(form) {

        var offsetTop, newPosition;

        // get the form's position from top        
        offsetTop = form.offset().top;

        // test if the navbar is fixed or not
        // when the navbar is NOT fixed, the collapse & expand button is visible
        if ($('button.btn-navbar').is(':visible')) {

            // navbar is static
            newPosition = offsetTop - 5 - 60; // 5px

        } else {

            // navbar is fixed
            newPosition = offsetTop - 50 - 60; // 50px

        }

        // scroll to the appropriate position            
        $('html,body').scrollTop(newPosition);
    }

    function setupTheCollapsingContactForm() {

        var div, button, strong, span, forms, form, isValid, validator, jqxhr, top;
        // , url, data, contentType, 

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

            // set the focus
            $(this).find('[name=fromEmail]').focus();

        });

        // on hide of any collapsible within any form
        forms.children('.collapse').bind('hidden', function () {

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
                    fromEmail: {
                        required: true,
                        email: true
                    },
                    fromName: "required",
                    subject: "required",
                    body: "required"
                },
                messages: {
                    fromEmail: {
                        required: 'Please provide your email.',
                        email: 'Please provide a valid email.'
                    },
                    fromName: "Please provide your name.",
                    subject: "Please provide a subject.",
                    body: "Please type a message."
                }
            });

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

                // scrollTo the success alert box
                repositionTheCollapsingContactForm(form);

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

    function getParameterByName(name) {

        var regexS, regex, results, parameterValue;
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        regexS = "[\\?&]" + name + "=([^&#]*)";
        regex = new RegExp(regexS);
        results = regex.exec(window.location.search);
        if (results === null) {
            parameterValue = "";
        }
        else {
            parameterValue = decodeURIComponent(results[1].replace(/\+/g, " "));
        }
        return parameterValue;

    }

    function respondToQueryStringActionParameter() {

        var action, hash;
        action = getParameterByName('action');
        if (action === 'email') {

            hash = window.location.hash;
            expandTheCollapsingContactFormBySectionHash(hash);

        }
    }

    function setupNavigationClickHandler() {

        var collapsible, href, doDefault;
        $('nav#sub-nav a').click(function (e) {

            // if there is a collapsible on the page
            collapsible = $('.in.collapse');
            if (collapsible.length > 0) {

                // ... determine where to navigate...
                href = $(this).attr('href');

                // ... hide the collapsible
                collapsible.collapse('hide');

                window.setTimeout(function () {

                    // ... then navigate after the collapse if fully hidden
                    // that takes about 400 milliseconds, so 600 is safe
                    window.location.hash = href;

                }, BOOTSTRAP_COLLAPSE_DURATION);

                // ... finally, prevent the default behavior
                e.preventDefault();
                doDefault = false;
            }

        });

        return doDefault;

    }

    $(document).ready(function () {

        setupTheAnchorElementNonLinkBehavior();

        setupTheCollapsingContactForm();

        respondToQueryStringActionParameter();

        setupNavigationClickHandler();

    });

} ());