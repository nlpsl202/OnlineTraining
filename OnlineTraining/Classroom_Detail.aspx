<%@ Page Language="C#" MasterPageFile="~/Site_Classroom.Master" AutoEventWireup="true" CodeBehind="Classroom_Detail.aspx.cs" Inherits="OnlineTraining.Classroom_Detail" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#tab").click(function () {
                $("#tab").addClass("active")
                $("#tab2").removeClass("active")
                $("#PassInfo").css("display", "none")
                $("#ClassInfo").show();
            });

            $("#tab2").click(function () {
                $("#tab").removeClass("active")
                $("#tab2").addClass("active")
                $("#ClassInfo").css("display", "none")
                $("#PassInfo").show();
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
                    <span>目前頁面 》開班資訊</span>
                </div>
            </div>

            <ul class="nav nav-tabs">
                <li id="tab" class="active"><a href="#">開班資訊</a></li>
                <li id="tab2"><a href="#">通過條件</a></li>
            </ul>

            <div class="well form-group" id="ClassInfo">
                <div class="form-group row">
                    <label class="col-md-1">開班屬性：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">課程屬性：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">開班名稱：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>



                <div class="form-group row">
                    <label class="col-md-1">主辦單位：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">課程日期：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">講師：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">課程時數：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">課程費用：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">承辦人：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>
            </div>

            <div class="well form-group" id="PassInfo" style="display:none">
                <div class="form-group row">
                    <label class="col-md-1">VIVOTEK ONLINE TRAINING PROGROM- Exam</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">上課表現</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">開班名稱：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>



                <div class="form-group row">
                    <label class="col-md-1">主辦單位：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">課程日期：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">講師：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">課程時數：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">課程費用：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">承辦人：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
