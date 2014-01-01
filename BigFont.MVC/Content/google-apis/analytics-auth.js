/*global document, gapi */

var clientId, apiKey, scopes;

clientId = '218172773206-j205k97bjrvvl4si71ao23lt14s2snjo.apps.googleusercontent.com';
apiKey = 'AIzaSyBmdZbo9r_TC-j22VLjcFfphndrA3jwm6E';
scopes = 'https://www.googleapis.com/auth/analytics.readonly';

// Authorized user
function handleAuthorized() {

    var authorizeButton, makeApiCallButton;

    authorizeButton = document.getElementById('authorize-button');
    makeApiCallButton = document.getElementById('make-api-call-button');

    // Show the 'Get Visits' button and hide the 'Authorize' button
    makeApiCallButton.style.visibility = '';
    authorizeButton.style.visibility = 'hidden';

    // When the 'Get Visits' button is clicked, call the makeAapiCall function
    makeApiCallButton.onclick = makeApiCall;
}

function loadAnalyticsClient() {
    // Load the Analytics client and set handleAuthorized as the callback function
    gapi.client.load('analytics', 'v3', handleAuthorized);
}

function handleAuthResult(authResult) {
    if (authResult) {
        // The user has authorized access
        // Load the Analytics Client. This function is defined in the next section.
        loadAnalyticsClient();
    } else {
        // User has not Authenticated and Authorized
        handleUnAuthorized();
    }
}

function handleAuthClick(event) {
    gapi.auth.authorize({ client_id: clientId, scope: scopes, immediate: false }, handleAuthResult);
    return false;
}

// Unauthorized user
function handleUnAuthorized() {

    var authorizeButton, makeApiCallButton;

    authorizeButton = document.getElementById('authorize-button');
    makeApiCallButton = document.getElementById('make-api-call-button');

    // Show the 'Authorize Button' and hide the 'Get Visits' button
    makeApiCallButton.style.visibility = 'hidden';
    authorizeButton.style.visibility = '';

    // When the 'Authorize' button is clicked, call the handleAuthClick function
    authorizeButton.onclick = handleAuthClick;
}

function checkAuth() {
    // Call the Google Accounts Service to determine the current user's auth status.
    // Pass the response to the handleAuthResult callback function

    gapi.auth.authorize({ client_id: clientId, scope: scopes, immediate: true }, handleAuthResult);
}

// This function is called after the Client Library has finished loading
function handleClientLoad() {

    // 1. Set the API Key
    gapi.client.setApiKey(apiKey);

    // 2. Call the function that checks if the user is Authenticated. This is defined in the next section
    window.setTimeout(checkAuth, 1);

}