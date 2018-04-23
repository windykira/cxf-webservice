<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style type="text/css">
        .dc-menu {
            position: absolute;
            left: 230px;
        }

        .dc-page {
            position: absolute;
            top: 60px;
        }

        .dc-object {
            position: absolute;
            left: 200px;
            top: 60px;
        }
    </style>
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="js/inserttable.js"></script>
    <script type="text/javascript" src="js/permission.js"></script>
    <script type="text/javascript" src="js/insertradio.js"></script>
    <script type="text/javascript">

        var strXML = "";
        function createDC() {
            var ctl = document.getElementById("myWriter");
            ctl.ExecuteCommand("InsertInputField", true, null);
            //ctl.ExecuteCommand("InsertListField", true, null);
            //ctl.ExecuteCommand("InsertString", false,"2012年12月23日星期日");
        }

        function saveDC() {
            var ctl = document.getElementById("myWriter");
            ctl.ExecuteCommand("FileSave", false, "D://test.xml");

        }

        function previewDC() {
            var ctl = document.getElementById("myWriter");
            ctl.ExecuteCommand("FilePrintPreview", true, null);
        }

        function printDC() {
            var ctl = document.getElementById("myWriter");
            ctl.ExecuteCommand("FilePrint", true, null);
        }

        function test() {
            var ctl = document.getElementById("myWriter");
            ctl.ExecuteCommand("FileOpen", false, "D://Dc//都昌//DemoFile2//护理记录--福建孟超肝胆医院护理记录录入.xml");
        }

        function oneMenu() {
            var ctl = document.getElementById("myWriter");
            ctl.ExecuteCommand("FileOpen", false, "D://test.xml");

            strXML = ctl.Document.XMLText;
            //ctl.Document.LoadFromString("","xml");
        }

        function oneMenu1() {
            var ctl = document.getElementById("myWriter");
            ctl.Document.LoadFromString(strXML, "xml");
            ctl.RefreshDocument();
        }

        function createInputDC() {//插入元素
            var myWriter = document.getElementById("myWriter");
            if (myWriter != null) {
                var inputSex3 = myWriter.ComCreateXTextInputFieldElement();
                inputSex3.ID = "性别3";
                inputSex3.BackgroundText = "请选择性别";
                inputSex3.ValueBinding = myWriter.ComCreateXDataBinding();
                inputSex3.ValueBinding.DataSource = "Patient";
                inputSex3.ValueBinding.BindingPath = "Sex";

                myWriter.ExecuteCommand("InsertInputField", false, inputSex3);
            }
        }
        function TestDataBing() { //绑定数据
            var myWriter = document.getElementById("myWriter");
            if (myWriter != null) {
                var xml = "<Patient><Sex>sexMan</Sex></Patient>";
                myWriter.SetDocumentParameterValueXml("Patient", xml);
                myWriter.WriteDataFromDataSourceToDocument();
            }
        }
        function getInputDC() { //获取元素
            var myWriter = document.getElementById("myWriter");
            if (myWriter != null) {
                var input = myWriter.Document.GetElementById("P001");
                if (input != null) {
                    input = myWriter.ComConvertToXTextInputFieldElement(input);
                    if (input != null) {
                        //alert(input.BackgroundText);
                        alert(input.Text);
                    }
                }
            }
        }

        function dataSourceDC() {

            var myWriter = document.getElementById("myWriter");
            //myWriter.SetDocumentParameterValueXml("People","<People><Name>张三</Name></People>");
            //myWriter.SetDocumentParameterValueXml("People", xml );
            //myWriter.WriteDataFromDataSourceToDocument();
            myWriter.ExecuteCommand("FileOpen", false, "D://test.xml");
            //myWriter.WriteDataFromDataSourceToDocument();
            myWriter.SetDocumentParameterValueXml("People", "<People><Name>张三</Name><Address>中国南京</Address></People>");
            myWriter.WriteDataFromDataSourceToDocument();
        }

        function insertSelectDC() {
            //插入下拉
            var myWriter = document.getElementById("myWriter");
            if (myWriter != null) {

                myWriter.DocumentOptions.BehaviorOptions.AutoCreateInstanceInProperty = true;

                var inputSex3 = myWriter.ComCreateXTextInputFieldElement();
                inputSex3.ID = "性别3";
                inputSex3.BackgroundText = "请选择性别";
                inputSex3.FieldSettings = myWriter.ComCreateInputFieldSettings();
                inputSex3.FieldSettings.EditStyle = 1;
                inputSex3.FieldSettings.MultiSelect = false;
                inputSex3.FieldSettings.DynamicListItems = false;
                //inputSex3.FieldSettings.ListSource = myWriter.ComCreateListSourceInfo();
                inputSex3.FieldSettings.ListSource.RuntimeItems = myWriter.ComCreateListItemCollection();
                inputSex3.FieldSettings.ListSource.RuntimeItems.AddByTextValue("男", "sexMan");
                inputSex3.FieldSettings.ListSource.RuntimeItems.AddByTextValue("女", "sexWoman");
                inputSex3.ValueBinding = myWriter.ComCreateXDataBinding();
                inputSex3.ValueBinding.DataSource = "Patient";
                inputSex3.ValueBinding.BindingPath = "Sex";
                myWriter.ExecuteCommand("InsertInputField", false, inputSex3);
            }
        }

        function openTemplate() {

            var ctl = document.getElementById("myWriter");
            //ctl.ExecuteCommand("FileOpen", false, "D://test.xml");
            ctl.Document.LoadFromString(strXML, "xml");
            ctl.RefreshDocument();
            //ctl.DocumentOptions.SecurityOptions.EnablePermission = true;
            //ctl.DocumentOptions.SecurityOptions.EnableLogicDelete = true;
            //ctl.DocumentOptions.SecurityOptions.ShowLogicDeletedContent = true;
            //ctl.DocumentOptions.SecurityOptions.ShowPermissionMark = true;

        }

        function fontDC() {
            var ctl = document.getElementById("myWriter");
            ctl.ExecuteCommand("Font", true, null);
        }

        function insertDynamicDC() {

            var ctl = document.getElementById("myWriter");
            var inputSex3 = ctl.ComCreateXTextInputFieldElement();
            inputSex3.ID = "ID123";
            inputSex3.BackgroundText = "请选择性别";
            inputSex3.FieldSettings = myWriter.ComCreateInputFieldSettings();
            inputSex3.FieldSettings.EditStyle = 1;
            inputSex3.FieldSettings.MultiSelect = false;
            inputSex3.FieldSettings.DynamicListItems = true;
            myWriter.ExecuteCommand("InsertInputField", false, inputSex3);
        }

    </script>

    <script language="javascript" for="myWriter" event="QueryListItems(eventSender,eventArgs)">

        var eleID = eventArgs.Element.ID;//元素ID
        if (eleID == "ID123") {
            var speCode = eventArgs.SpellCode;
            var myWriter = document.getElementById("myWriter");
            if (speCode == undefined) {
                var list = myWriter.ComCreateListItemCollection();
                $.ajax({
                    type: "GET",
                    url: "/services/v1.0/webUser/getData",
                    data: "",
                    dataType: "json",
                    success: function(data){

                        //var jsonStr = [{"name":"中西医","value":"3","id":3},{"name":"中西医","value":"3","id":3},{"name":"中西医","value":"3","id":3}];
                        for(var i in data){
                            //alert(data[i]);
                            //alert(i);
                            list.AddByTextValue(data[i].name,data[i].valuen);
                            //list.AddByTextValueTextInList( data[i].name, data[i].valuen,data[i].name);
                        }
                        /*for (var i = 0; i < 5; i++) {
                            list.AddByTextValueTextInList(i, i, i);
                        }*/
                        eventArgs.Result = list;
                        /*$('#resText').empty();   //清空resText里面的所有内容
                         var html = '';
                         $.each(data, function(commentIndex, comment){
                         html += '<div class="comment"><h6>' + comment['username']
                         + ':</h6><p class="para"' + comment['content']
                         + '</p></div>';
                         });
                         $('#resText').html(html);*/
                    }
                });
            }
            else {
                var list = myWriter.ComCreateListItemCollection();
                for (var i = 0; i < 15; i++) {
                    list.AddByTextValueTextInList(speCode + i, i, speCode + i);
                }
                eventArgs.Result = list;
            }
        }
    </script>


</head>
<body>
<div class="dc-menu">
    <form action="#" id="myform">
        <input type="button" id="create" value="新增" onclick="createDC()"/>
        <input type="button" id="save" value="保存" onclick="saveDC()"/>
        <input type="button" id="preview" value="预览" onclick="previewDC()"/>
        <input type="button" id="print" value="打印" onclick="printDC()"/>
        <input type="button" id="createInput" value="插入元素" onclick="createInputDC()"/>
        <input type="button" id="getInput" value="获取元素" onclick="getInputDC()"/>
        <input type="button" id="insertSelect" value="插入下拉框" onclick="insertSelectDC()"/>

        <input type="button" id="insertSelectDynamicDC" value="插入下拉框动态加载" onclick="insertDynamicDC()"/>
        <input type="button" id="insertCheckbox" value="插入复选框"/>
        <input type="button" id="login" value="登录"/>
        <input type="button" id="insertTableDynamicDC" value="动态生成单元格"/>
        <input type="button" id="testTable" value="动态生成单元格测试"/>

    </form>
    <img src="image/test1.png" alt="字体" onclick="fontDC()">
</div>

<ul>
    <li class="dc-page">
        <a href="#" id="test" onclick="test()">测试页面</a>
        <ul>
            <li><a href="#" id="oneMenu" onclick="oneMenu()">一级页面</a></li>
            <li><a href="#" id="twoMenu">二级页面</a></li>
            <li><a href="#" id="oneMenu1" onclick="oneMenu1()">测试页面2</a></li>
            <li><a href="#" id="dataSourceDC" onclick="dataSourceDC()">绑定数据源测试</a></li>

            <li><a href="#" id="openTemplate" onclick="openTemplate()">打开初始模板</a></li>
        </ul>
    </li>
    <li class="dc-object">
        <object id="myWriter" name="myWriter"
                classid="clsid:00012345-6789-ABCD-EF01-2345678900ff"
                codebase="http://localhost:8080/DCLib/DCWriterWeb.cab"
                style="position:relative ; left:20px;width: 80%; height: 500px;border:solid 1 black">
            <param name="CodeBaseForUpdateAssembly"
                   value="http://localhost:8080/DCLib/DCWriterWeb.cab#Version=1,2015,12,23"/>
            <param name="BackColor" value="Gray"/>
            <param name="BorderStyle" value="3DFixed"/>
            <param name="InitalizeParameterValues" value="PatientName:张三"/>
            <param name="Font" value="宋体,20"/>
        </object>
    </li>
</ul>

</body>
</html>