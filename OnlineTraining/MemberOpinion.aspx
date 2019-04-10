<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberOpinion.aspx.cs" Inherits="OnlineTraining.MemberOpinion" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#li_MemberOpinion').addClass("active");
        });
    </script>
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
    <div class="row">
        <div class="col-md-12">
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
