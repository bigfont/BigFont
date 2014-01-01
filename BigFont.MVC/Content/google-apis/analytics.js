
function printResults(results) {
    if (results.rows && results.rows.length) {
        console.log('View (Profile) Name: ', results.profileInfo.profileName);
        console.log('Total Visits: ', results.rows[0][0]);
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
        'start-date': '2012-03-03',
        'end-date': '2012-03-03',
        'metrics': 'ga:visits'
    }).execute(handleCoreReportingResults);
}

function handleProfiles(results) {
    if (!results.code) {
        if (results && results.items && results.items.length) {
            
            for (var i = 0; i < results.items.length; ++i) {

                // Get the View (Profile) ID
                var profileID = results.items[i].id;

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
    if (!results.code) {
        if (results && results.items && results.items.length) {
            
            for (var i = 0; i < results.items.length; ++i) {

                // Get the Google Analytics account
                var accountId = results.items[i].accountId

                // Get the Web Property ID
                var webPropertyId = results.items[i].id;

                console.log('Account ID: ' + accountId);
                console.log('Property ID: ' + webPropertyId);

                // Query only the first web property
                if (webPropertyId === 'UA-36302929-1')
                {
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
                var accountId =  results.items[i].id

                console.log('Account ID: ' + accountId);

                // query only the BigFont.ca account
                // because we have a rate limit.
                if (accountId === '36302929')
                {
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

function makeApiCall() {
    queryAccounts();
}