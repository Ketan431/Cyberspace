<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="feedback_report.aspx.cs" Inherits="Cyberlaw.Admin.feedback_report" %>

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

    <style>
        .row {
            line-height: 50px;
        }

        .btn {
            width: 20%;
            float: right;
            margin-right: 3%;
            border-radius: 30px 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <h3 style="text-align: center" class="subtitle">Enter feedback details</h3>
            <div class="col-lg-6 col-md-12">
                <div class="col-md-6">
                    <asp:Label runat="server" Text="Enter Username" Font-Size="17pt"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                </div>

            </div>
            <div class="col-lg-6 col-md-12">
                <div class="col-md-6">
                    <asp:Label runat="server" Text="Enter Email" Font-Size="17pt"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="col-md-6">
                    <asp:Label runat="server" Text="Service" Font-Size="17pt"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList runat="server" CssClass="form-control">
                        <asp:ListItem>Trust</asp:ListItem>
                        <asp:ListItem>Flexibilitiy</asp:ListItem>
                        <asp:ListItem>GUI</asp:ListItem>
                        <asp:ListItem>Usability</asp:ListItem>
                        <asp:ListItem>Support</asp:ListItem>
                    </asp:DropDownList>
                </div>

            </div>
            <div class="col-lg-6 col-md-12">
                <div class="col-md-6">
                    <asp:Label runat="server" Text="Feedback" Font-Size="17pt"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList runat="server" CssClass="form-control">
                        <asp:ListItem>Very Satisfied</asp:ListItem>
                        <asp:ListItem>Satisfied</asp:ListItem>
                        <asp:ListItem>Unsatisfied</asp:ListItem>
                        <asp:ListItem>Very Unsatisfied</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>



            <asp:Button runat="server" Text="Submit" CssClass="btn btn-success" />



        </div>
</asp:Content>
