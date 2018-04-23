$(document).ready(function () {

    var ctl = document.getElementById("myWriter");
    $("#login").click(function(){

        alert("login");
        ctl.UserLoginByParameter("ID：123456", "姓名：张三", 3);
        ctl.ExecuteCommand( "ComplexViewMode" , false , null );
        ctl.DocumentOptions.SecurityOptions.EnablePermission = true;
        ctl.DocumentOptions.SecurityOptions.EnableLogicDelete = true;
        ctl.DocumentOptions.SecurityOptions.ShowLogicDeletedContent = true;
        ctl.DocumentOptions.SecurityOptions.ShowPermissionMark = true;
        ctl.DocumentOptions.SecurityOptions.ShowPermissionTip = true;

        ctl.DocumentOptions.SecurityOptions.DeleterTipFormatString = "{DisplaySavedTime:yyyy-MM-dd HH:mm:ss}由12345:张三删除";

        ctl.DocumentOptions.SecurityOptions.RealDeleteOwnerContent = false;

        //ctl.DocumentOptions.SecurityOptions.TrackVisibleLevel2.BackgroundColorString = "#213222";
        //ctl.DocumentOptions.SecurityOptions.TrackVisibleLevel2.DeleteLineColorString = "#213222";
        //ctl.DocumentOptions.SecurityOptions.TrackVisibleLevel2.UnderLineColorString = "#213222";
        //ctl.DocumentOptions.SecurityOptions.TrackVisibleLevel2.DeleteLineNum = 1;
        //ctl.DocumentOptions.SecurityOptions.TrackVisibleLevel2.UnderLineColorNum = 1;
    })
});