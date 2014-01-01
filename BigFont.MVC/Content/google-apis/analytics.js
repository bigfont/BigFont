/*global $, console, gapi */

(function (window) {

    function printResults(results) {
        if (results.rows && results.rows.length) {
            var resultsDiv, ul, li, j, currentRow, browser, visits, badgeType;

            resultsDiv = $('#ga-results');
            resultsDiv.empty();

            // append the query 
            $('<p/>', { text: results.query['start-date'] + ' to ' + results.query['end-date'] }).appendTo(resultsDiv);
            $('<p/>', { text: results.query.profileName });
            $('<p/>', { text: 'Visits ' + results.totalsForAllResults[0] });

            // append the query results
            ul = $('<ul/>', { 'class': 'unstyled' });

            // iterate the rows
            for (j = 0; j < results.rows.length; ++j) {

                // skip the first results because it is 'not set'
                if (j > 0) {

                    // get current row
                    currentRow = results.rows[j];

                    // get cells
                    browser = currentRow[0];
                    visits = currentRow[1];

                    // colorize badges
                    if (visits >= 500) {
                        badgeType = 'important';
                    } else if (visits >= 250) {
                        badgeType = 'warning';
                    } else if (visits >= 50) {
                        badgeType = 'info';
                    } else {
                        badgeType = '';
                    }

                    // create a list item
                    li = $('<li/>', { html: (browser + ' <span class="badge badge-' + badgeType + '">' + visits + '</span>') });
                    ul.append(li);
                }
            }

            // append the ul to the document        
            resultsDiv.append(ul);

        } else {
            console.log('No results found');
        }
    }

    function handleCoreReportingResults(results) {
        if (results.error) {
            console.log('There was an error querying core reporting API: ' + results.message);
        } else {
            printResults(results);
        }
    }

    function queryCoreReportingApi(profileId) {
        console.log('Querying Core Reporting API.');

        // Use the Analytics Service Object to query the Core Reporting API
        gapi.client.analytics.data.ga.get({
            'ids': 'ga:' + profileId,
            'start-date': '2013-01-01',
            'end-date': '2013-12-31',
            'metrics': 'ga:visits',
            'dimensions': 'ga:browser'
        }).execute(handleCoreReportingResults);
    }

    function handleProfiles(results) {

        var i, profileID;

        if (!results.code) {
            if (results && results.items && results.items.length) {

                for (i = 0; i < results.items.length; ++i) {

                    // Get the View (Profile) ID
                    profileID = results.items[i].id;

                    console.log('Profile ID: ' + profileID);

                    // Step 3. Query the Core Reporting API
                    queryCoreReportingApi(profileID);
                }

            } else {
                console.log('No views (profiles) found for this user.');
            }
        } else {
            console.log('There was an error querying views (profiles): ' + results.message);
        }
    }

    function queryProfiles(accountId, webpropertyId) {
        console.log('Querying Views (Profiles).');

        // Get a list of all Views (Profiles) for the first Web Property of the first Account
        gapi.client.analytics.management.profiles.list({
            'accountId': accountId,
            'webPropertyId': webpropertyId
        }).execute(handleProfiles);
    }

    function handleWebproperties(results) {

        var i, accountId, webPropertyId;

        if (!results.code) {
            if (results && results.items && results.items.length) {

                for (i = 0; i < results.items.length; ++i) {

                    // Get the Google Analytics account
                    accountId = results.items[i].accountId;

                    // Get the Web Property ID
                    webPropertyId = results.items[i].id;

                    console.log('Account ID: ' + accountId);
                    console.log('Property ID: ' + webPropertyId);

                    // Query only the first web property
                    if (webPropertyId === 'UA-36302929-1') {
                        // Query for Views (Profiles)
                        queryProfiles(accountId, webPropertyId);
                    }
                }

            } else {
                console.log('No webproperties found for this user.');
            }
        } else {
            console.log('There was an error querying webproperties: ' + results.message);
        }
    }

    function queryWebproperties(accountId) {
        console.log('Querying Webproperties.');

        // Get a list of all the Web Properties for the account
        gapi.client.analytics.management.webproperties.list({ 'accountId': accountId }).execute(handleWebproperties);
    }

    function handleAccounts(results) {
        if (!results.code) {
            if (results && results.items && results.items.length) {

                for (var i = 0; i < results.items.length; ++i) {

                    // Get the Google Analytics account
                    var accountId = results.items[i].id

                    console.log('Account ID: ' + accountId);

                    // query only the BigFont.ca account
                    // because we have a rate limit.
                    if (accountId === '36302929') {
                        // Query for Web Properties
                        queryWebproperties(accountId);
                    }
                }

            } else {
                console.log('No accounts found for this user.')
            }
        } else {
            console.log('There was an error querying accounts: ' + results.message);
        }
    }

    function queryAccounts() {
        console.log('Querying Accounts.');

        // Get a list of all Google Analytics accounts for this user
        gapi.client.analytics.management.accounts.list().execute(handleAccounts);
    }

    window.makeApiCall = function () {
        queryAccounts();
    }

}());