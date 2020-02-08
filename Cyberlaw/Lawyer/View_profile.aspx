<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer/LawyerPanel.Master" AutoEventWireup="true" CodeBehind="View_profile.aspx.cs" Inherits="Cyberlaw.Lawyer.View_profile" %>
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
        .card {
            padding: 5px;
            width: 60%;
            align-content: center;
            background-color: #7f5a83;
            background-image: linear-gradient(315deg, #7f5a83 0%, #0d324d 74%);
            line-height:30px;
            margin-left:15%;
            color:white;
            font-size:17px;
            height:468px;
        }
        
        

        .img{
            margin-bottom:10px;
            margin-left:34%;
            border-radius:50% 50%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="card">
            <h3 class="text-info text-center">Lawyer Profile</h3>
            <div class="row">
                <hr />

                <div class="col-md-12">
                    <asp:Image ID="Image1" runat="server" CssClass="img" Width="250px" Height="150px" />
                </div>
                
                <div class="col-md-6">
                    <div class="col-md-6">
                        <asp:Label ID="Lawyerid" runat="server" Text="Lawyer ID"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="lid" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-6">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="name" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-6">
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="email" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-6">
                        <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="gen" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-6">
                        <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="phone" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-6">
                        <asp:Label ID="Label5" runat="server" Text="Position"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="pos" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-6">
                        <asp:Label ID="Label6" runat="server" Text="Acievements"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="achieve" runat="server" Text=""></asp:Label>
                    </div>
                </div>
               
            </div>


        </div>
    </div>
</asp:Content>
