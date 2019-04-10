<%@ Page Language="C#" MasterPageFile="~/Site_Classroom.Master" AutoEventWireup="true" CodeBehind="Classroom_Record.aspx.cs" Inherits="OnlineTraining.Classroom_Record" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#tab").click(function () {
                $("#tab").addClass("active")
                $("#tab2").removeClass("active")
            });

            $("#tab2").click(function () {
                $("#tab").removeClass("active")
                $("#tab2").addClass("active")
            });
        });
    </script>
    <style>
        .nav-tabs {
            border-bottom: none;
        }

            .nav-tabs > li {
                margin-bottom: 0;
            }
    </style>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group row row-bordered">
                <div class="col-md-12">
                    <span>目前頁面 》學習紀錄</span>
                </div>
            </div>

            <ul class="nav nav-pills">
                <li id="tab" class="active"><a href="#">開班資訊</a></li>
                <li id="tab2"><a href="#">通過條件</a></li>
            </ul>

            <div>
            </div>
        </div>
    </div>
</asp:Content>
