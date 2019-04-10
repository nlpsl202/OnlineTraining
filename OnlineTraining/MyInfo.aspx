﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyInfo.aspx.cs" Inherits="OnlineTraining.MyInfo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#li_MyInfo').addClass("active");
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
                <div class="col-md-12">
                    <span>目前頁面 》我的資料</span>
                </div>
            </div>

            <label>個人資料</label>

            <div class="well">
                <div class="form-group row">
                    <label class="col-md-1">帳號：</label>
                    <label class="col-md-2">nlpsl202</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">姓名：</label>
                    <label class="col-md-2">Jeff</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">公司名稱：</label>
                    <label class="col-md-2">陞泰</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">職稱：</label>
                    <label class="col-md-2">專員</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">電子郵件：</label>
                    <label class="col-md-2">qsc5367899@gmail.com</label>
                </div>

                <div class="form-group row">
                    <label class="col-md-1">電話：</label>
                    <label class="col-md-2">0912056698</label>
                </div>

                <div class="form-group row">
                    <div class="col-md-1">
                        <label>舊密碼：</label>
                    </div>
                    <div class="col-md-2">
                        <input id="OldPsw_txb" class="form-control" type="password" />
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-md-1">
                        <label>新密碼：</label>
                    </div>
                    <div class="col-md-2">
                        <input id="NewPsw_txb" class="form-control" type="password" />
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-md-1">
                        <label>確認密碼：</label>
                    </div>
                    <div class="col-md-2">
                        <input id="ConfirmPsw_txb" class="form-control" type="password" />
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-md-2">
                        <button type="button" class="btn btn-primary btn-block" id="Submit_btn">儲存</button>
                    </div>
                    <div class="col-md-2 ">
                        <button type="button" class="btn btn-default btn-block" id="Reset_btn">重置</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>