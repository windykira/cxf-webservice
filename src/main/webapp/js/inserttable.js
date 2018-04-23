$(document).ready(function () {

    var ctl = document.getElementById("myWriter");
    $("#insertTableDynamicDC").click(function(){

        var table = ctl.ComCreateXTextTableElement();
        var text = "";
        /*table.Columns.Add(new XTextTableColumnElement());
        var row = new XTextTableRowElement();
        table.Rows.Add(row);
        var cell = new XTextTableCellElement();
        row.Cells.Add(cell);
        cell.SetInnerTextFast( DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
        ctl.ExecuteCommand("Table_InsertTable", false, table);*/

        //ctl.ExecuteCommand("Table_InsertTable", true, null);
        //var tableElement = ctl.Document.GetElementById("Table")
        //alert(tableElement);
    });

    $("#testTable").click(function(){

        var tableElement222 = ctl.GetElementById("Table")
        alert(tableElement222);
    });

});