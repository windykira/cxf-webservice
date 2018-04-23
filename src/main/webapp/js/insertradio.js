$(document).ready(function () {

    var ctl = document.getElementById("myWriter");
    $("#insertCheckbox").click(function(){

        ctl.ExecuteCommand("InsertCheckBox", true, null );

    });
});