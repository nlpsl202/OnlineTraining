<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassVideo.aspx.cs" Inherits="OnlineTraining.ClassVideo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/mobile-navbar.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootsnipp.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="http://academy.vivotek.com/Portal/Utility/jwplayer.js"></script>
    <style>
        form {
            margin: 0 auto;
            width: 800px;
        }

        .fill {
            min-height: 100%;
            height: 100%;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Back_btn").click(function () {
                window.location = "<%:Session["ClassVideoBackPage"]%>";
            });
            $("#TimeClock").val = "123";
        });
    </script>
    <script>

        /*function show() {
            var Digital = new Date()
            var hours = Digital.getHours()
            var minutes = Digital.getMinutes()
            var seconds = Digital.getSeconds()
            var dn = "AM"
            if (hours > 12) {
                dn = "PM"
                hours = hours - 12
            }
            if (hours == 0)
                hours = 12
            if (minutes <= 9)
                minutes = "0" + minutes
            if (seconds <= 9)
                seconds = "0" + seconds
            $('#TimeClock').value = hours + ":" + minutes + ":"
                + seconds + " " + dn
            setTimeout("show()", 1000)
        }
        show()*/
    </script>
</head>
<body>
    <nav class="navbar navbar-fixed-top navbar-bootsnipp animate" role="navigation" style="z-index: 9999999">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-5">
                <ul class="nav navbar-nav">
                    <li class="li">閱讀時間：</li>
                    <li class="li"><span id="TimeClock"></span></li>
                    <li class="li">
                        <button type="button" class="btn btn-primary btn-block" id="Back_btn">結束閱讀並紀錄時數</button></li>
                </ul>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">
        <div id="thePlayer"></div>
        <script type="text/javascript">
            jwplayer("thePlayer").setup({
                flashplayer: "player.swf",
                file: "<%:Session["VideoPath"]%>",
                height: "800px",
                width: "800px"
            });
        </script>
    </form>
</body>
</html>
