var convertFromCurrency = "NZD";
var convertToCurrency = "EUR";

function convertToFloat(input) {
    if (/^(\-|\+)?([0-9]+(\.[0-9]+)?|Infinity)$/
            .test(input))
        return Number(input);
    return NaN;
}

function updateConvertFrom(){
    $("#exchangeFrom").text(convertFromCurrency);
    $("#convertFromLabel").text(convertFromCurrency);
}

function updateConvertTo() {
    $("#exchangeTo").text(convertToCurrency);
    $("#convertToLabel").text(convertToCurrency);

}

$(".convert_from").click(function (event) {
    convertFromCurrency = $(event.target).text();
    updateConvertFrom();
});

$(".convert_to").click(function(event) {
    convertToCurrency = $(event.target).text();
    updateConvertTo();
})

$("#convertFromTextArea").keyup(function() {
    var text = $("#convertFromTextArea").val()
    if (isNaN(convertToFloat(text))) {
        $("#convertFromTextArea").removeClass("is-valid");
        $("#convertFromTextArea").addClass("is-invalid");

    } else {
        $("#convertFromTextArea").removeClass("is-invalid");
        $("#convertFromTextArea").addClass("is-valid")


    }

});


$("#convertToTextArea").keyup(function() {
    var text = $("#convertToTextArea").val()
    if (isNaN(convertToFloat(text))) {
        $("#convertToTextArea").removeClass("is-valid");
        $("#convertToTextArea").addClass("is-invalid");

    } else {
        $("#convertToTextArea").removeClass("is-invalid");
        $("#convertToTextArea").addClass("is-valid")


    }

});

