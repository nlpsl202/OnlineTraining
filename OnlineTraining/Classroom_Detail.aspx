<%@ Page Language="C#" MasterPageFile="~/Site_Classroom.Master" AutoEventWireup="true" CodeBehind="Classroom_Detail.aspx.cs" Inherits="OnlineTraining.Classroom_Detail" %>

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
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-offset-2 col-sm-8">
                <span>目前頁面 》開班申請報名--開班課程清單</span>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-offset-2 col-sm-8">
                <ul class="nav nav-tabs">
                    <li id="tab" class="active"><a href="#">開班資訊</a></li>
                    <li id="tab2"><a href="#">通過條件</a></li>
                </ul>
                <dx:ASPxVerticalGrid ID="ASPxVerticalGrid1" runat="server" Width="700">
                    <Rows>
                        <dx:VerticalGridTextRow FieldName="OpenType" Caption="開班屬性" />
                        <dx:VerticalGridTextRow FieldName="ClassType" Caption="課程屬性" />
                        <dx:VerticalGridTextRow FieldName="ClassName" Caption="開班名稱" />
                        <dx:VerticalGridTextRow FieldName="Organizer" Caption="主辦單位" />
                        <dx:VerticalGridTextRow FieldName="Date" Caption="課程日期" />
                        <dx:VerticalGridTextRow FieldName="Instructor" Caption="講師" />
                        <dx:VerticalGridTextRow FieldName="Fee" Caption="課程時數" />
                        <dx:VerticalGridTextRow FieldName="Hours" Caption="課程費用" />
                        <dx:VerticalGridTextRow FieldName="Contact" Caption="承辦人" />
                    </Rows>
                </dx:ASPxVerticalGrid>
            </div>
        </div>
    </div>
</asp:Content>
