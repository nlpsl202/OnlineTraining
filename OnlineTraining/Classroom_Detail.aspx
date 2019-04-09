<%@ Page Language="C#" MasterPageFile="~/Site_Classroom.Master" AutoEventWireup="true" CodeBehind="Classroom_Detail.aspx.cs" Inherits="OnlineTraining.Classroom_Detail" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
                    <li class="active"><a href="#">開班資訊</a></li>
                    <li><a href="#">通過條件</a></li>
                </ul>
                <dx:ASPxVerticalGrid ID="ASPxVerticalGrid1" runat="server" Width="700"></dx:ASPxVerticalGrid>
            </div>
        </div>
    </div>
</asp:Content>
