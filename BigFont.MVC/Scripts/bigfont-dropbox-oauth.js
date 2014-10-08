$(function () {

    var split;
    var innerSplit;
    var label;
    var input;
    var hash;

    hash = window.location.hash.replace("#", "");
    split = hash.split("&");

    for (var i = 0; i < split.length; ++i) {

        innerSplit = split[i].split("=");

        if (innerSplit[0] == "access_token") {
            label = $("<label />", { text: "Access Token" });
            input = $("<textarea />", { val: innerSplit[1], "class": "col-md-6", rows: 5 });

            $("form#hash-values")
                .append(label)
                .append(input);
        }

    }

});