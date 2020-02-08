<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer/LawyerPanel.Master" AutoEventWireup="true" CodeBehind="Lawyer_profile.aspx.cs" Inherits="Cyberlaw.Lawyer.Lawyer_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Lawyer Panel</title>

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
        
        .btn{
            margin-top:1%;
            width:20%;
            border-radius:30px 30px;
        }
      
        .text-info{
            line-height:27px;
            font-size:17px;
        }

        .card{
            width:155%;
            padding:10px;
            line-height:25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container card">
         <div class="row">
            <h3 class="text-info text-center" style="font-size:27px;">Enter Your info</h3>
            <div class="col-md-6">
                <asp:label runat="server" text="Image" CssClass="text-uppercase"></asp:label>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            </div>
            <div class="col-md-6">
                <asp:label runat="server" text="Name" CssClass="text-uppercase"></asp:label>
                <asp:textbox runat="server" CssClass="form-control" ID="name"></asp:textbox>
            </div>
            <div class="col-md-6">
                <asp:label runat="server" text="Gender" CssClass="text-uppercase"></asp:label>
                <asp:RadioButtonList ID="gender" runat="server" CssClass="radio">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
      
            </div>
            <div class="col-md-6">
                <asp:label runat="server" text="Email" CssClass="text-uppercase"></asp:label>
                <asp:textbox runat="server" CssClass="form-control" ID="email"></asp:textbox>
            </div>
            <div class="col-md-6">
                <asp:label runat="server" text="Phone" CssClass="text-uppercase"></asp:label>
                <asp:textbox runat="server" CssClass="form-control" ID="phone"></asp:textbox>
            </div>
            <div class="col-md-6">
                <asp:label runat="server" text="Position" CssClass="text-uppercase"></asp:label>
                <asp:dropdownlist runat="server" CssClass="form-control" ID="position">
                    <asp:ListItem>Senior Lawyer</asp:ListItem>
                    <asp:ListItem>Junior Lawyer</asp:ListItem>
                    <asp:ListItem>Assistant Lawyer</asp:ListItem>
                    <asp:ListItem>Consultant</asp:ListItem>
                </asp:dropdownlist>
            </div>
            <div class="col-md-6">
                <asp:label runat="server" text="Achievements" CssClass="text-uppercase"></asp:label>
                <asp:textbox runat="server" CssClass="form-control" ID="info"></asp:textbox>
            </div>
            
               
        </div>
         <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" OnClick="Button1_Click" Text="Submit" />
           <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" OnClick="Button2_Click" Text="Update Profile" />
    </div>
</asp:Content>
