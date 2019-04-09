<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberOpinion.aspx.cs" Inherits="OnlineTraining.MemberOpinion" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" media="screen" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <script type="text/javascript" src="//code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
    <script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>
    <style>
        label {
            margin-top: 7px;
        }

        .row-bordered:after {
            content: "";
            display: block;
            border-bottom: 1px solid #ccc;
            margin: 0 15px;
        }
    </style>
    <div class="container-fluid">
        <div class="col-sm-8 col-sm-offset-2">
            <div class="form-group row row-bordered">
                <div class="col-sm-12">
                    <span>目前頁面 》意見回饋</span>
                </div>
            </div>

            <div class="form-group green-border-focus">
                <label for="exampleFormControlTextarea5">回饋與建議</label>
                <textarea class="form-control" id="exampleFormControlTextarea5" rows="3"></textarea>
            </div>

            <div class="form-group row">
                <div class="col-md-2">
                    <button type="button" class="btn btn-primary btn-block" id="Submit_btn">送出</button>
                </div>
                <div class="col-md-2 ">
                    <button type="button" class="btn btn-default btn-block" id="Reset_btn">重置</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
