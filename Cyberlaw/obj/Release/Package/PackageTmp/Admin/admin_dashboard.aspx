<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="admin_dashboard.aspx.cs" Inherits="Cyberlaw.Admin.admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Admin Panel</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet" />

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet" />


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    <script type="text/javascript" src="//cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
    <script type="text/javascript" src="//cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>

    <style>
        .logout {
            border-radius: 50%;
            height: 40px;
            width: 40px;
            margin-left: 5px;
            margin-top: -5px;
        }
        
        .ctn2{
            width:50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">

                        <div class="header">
                            <h4 class="title">Total Users</h4>
                            <p class="category">Last Month</p>
                        </div>
                        <div class="content ctn2">
                            <div>
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            </div>

                            <div class="footer">
                                <div class="legend">
                                    <i class="fa fa-circle text-info"></i>General Users
                                        <i class="fa fa-circle text-danger"></i>Pro Users
                                        <i class="fa fa-circle text-warning"></i>Vip Users
                                </div>
                                <hr>
                                <div class="stats">
                                    <i class="fa fa-clock-o"></i>Sent 30 days ago
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>







            <div class="footer">
                <hr>
                <div class="stats">
                    <i class="fa fa-history"></i>Updated 3 minutes ago
                </div>
            </div>
        </div>
    </div>

</asp:Content>
