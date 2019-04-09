<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClassInfo.aspx.cs" Inherits="OnlineTraining.ClassInfo" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--<link rel="stylesheet" type="text/css" media="screen" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />-->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <script type="text/javascript" src="//code.jquery.com/jquery-2.1.1.min.js"></script>
    <!--<script type="text/javascript" src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>-->
    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
    <script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#datetimepickerS').datetimepicker({
                format: 'YYYY/MM/DD'
            });

            $('#datetimepickerE').datetimepicker({
                format: 'YYYY/MM/DD'
            });
        });

        function initMoreButton(s, e) {
            $(s.GetMainElement()).find(".more-info").click(function () {
                if (s.InCallback()) return;
                var $btn = $(this);
                s.GetRowValues($btn.attr("data-key"), 'ClassNo', function (values) {
                    var para = { 'ClassNo': values, 'BackPage': "ClassInfo.aspx" };
                    $.ajax({
                        type: "POST",
                        url: "ClassInfo.aspx/IntoClassroom",
                        data: JSON.stringify(para),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            window.location = "Classroom.aspx";
                        }
                    });

                });
            });
        }
    </script>
    <style>
        label {
            margin-top: 7px;
        }

        .hidden {
            display: none;
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
                    <span>目前頁面 》開班申請報名--開班課程清單</span>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-4 row">
                    <div class="col-sm-5">
                        <label for="Phone_txb">關鍵字：</label>
                    </div>
                    <div class="col-sm-7">
                        <asp:TextBox CssClass="form-control" ID="Phone_txb" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-sm-4 row">
                    <div class="col-sm-5">
                        <label for="Phone_txb">講師：</label>
                    </div>
                    <div class="col-sm-7">
                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-sm-4 row">
                    <div class="col-sm-5">
                        <label for="Phone_txb">承辦人：</label>
                    </div>
                    <div class="col-sm-7">
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-4 row">
                    <div class="col-sm-5">
                        <label for="Phone_txb">開班屬性：</label>
                    </div>
                    <div class="col-sm-7">
                        <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                            <asp:ListItem Value="ALL">全部</asp:ListItem>
                            <asp:ListItem Value="I">內訓</asp:ListItem>
                            <asp:ListItem Value="O">外訓</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-sm-4 row">
                    <div class="col-sm-5">
                        <label for="Phone_txb">課程類別：</label>
                    </div>
                    <div class="col-sm-7">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-sm-4 row">
                    <div class="col-sm-5">
                        <label for="Phone_txb">搜尋範圍：</label>
                    </div>
                    <div class="col-sm-7">
                        <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                            <asp:ListItem Value="ALL">全部</asp:ListItem>
                            <asp:ListItem Value="1">可申請報名</asp:ListItem>
                            <asp:ListItem Value="2">可進入教室</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-4 row">
                    <div class="col-sm-5">
                        <label>課程屬性：</label>
                    </div>
                    <div class="col-sm-7">
                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                            <asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>
                            <asp:ListItem Value="America">America</asp:ListItem>
                            <asp:ListItem Value="Japan">Japan</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-sm-8 row">
                    <div class="col-sm-3">
                        <label>課程日期：</label>
                    </div>
                    <div class='col-sm-3'>
                        <div class="form-group">
                            <div class='input-group date' id='datetimepickerS'>
                                <input type='text' class="form-control" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 text-center">
                        <label for="to" style="margin-top: 8px">to</label>
                    </div>
                    <div class='col-sm-3'>
                        <div class="form-group">
                            <div class='input-group date' id='datetimepickerE'>
                                <input type='text' class="form-control" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 col-sm-offset-1">
                        <button type="button" class="btn btn-primary pull-right">搜尋</button>
                    </div>
                </div>
            </div>

            <dx:BootstrapGridView ID="BootstrapGridView1" runat="server">
                <ClientSideEvents Init="initMoreButton" EndCallback="initMoreButton" />
                <Columns>
                    <dx:BootstrapGridViewDataColumn FieldName="ClassNo" Visible="false" />
                    <dx:BootstrapGridViewDataColumn FieldName="OpenType" Caption="開班屬性" />
                    <dx:BootstrapGridViewDataColumn FieldName="ClassName" Caption="開班名稱" />
                    <dx:BootstrapGridViewDataColumn FieldName="ClassType" Caption="課程屬性" />
                    <dx:BootstrapGridViewDataColumn FieldName="Date" Caption="課程日期" />
                    <dx:BootstrapGridViewDataColumn FieldName="Hours" Caption="時數" />
                    <dx:BootstrapGridViewDataColumn FieldName="Organizer" Caption="主辦單位" />
                    <dx:BootstrapGridViewDataColumn FieldName="StartType" Visible="false" />
                    <dx:BootstrapGridViewDataColumn Caption="">
                        <DataItemTemplate>
                            <button type="button" class='<%# DataBinder.Eval(Container.DataItem, "StartType").ToString() == "1" ? "hidden" : String.Empty %> btn btn-default more-info' data-key="<%# Container.VisibleIndex %>">申請</button>
                            <button type="button" class='<%# DataBinder.Eval(Container.DataItem, "StartType").ToString() == "2" ? "hidden" : String.Empty %> btn btn-default more-info' data-key="<%# Container.VisibleIndex %>">進入教室</button>
                        </DataItemTemplate>
                    </dx:BootstrapGridViewDataColumn>
                </Columns>
                <SettingsPager PageSize="7" />
            </dx:BootstrapGridView>
        </div>
    </div>
</asp:Content>
