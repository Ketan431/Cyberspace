<%@ Page Title="" Language="C#" MasterPageFile="~/User/panel.Master" AutoEventWireup="true" CodeBehind="View_profile.aspx.cs" Inherits="Cyberlaw.User.View_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Cyberlaw</title>
    <link rel="icon" href="../img/icon.png" />


    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <!-- Custom fonts for this template -->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css' />

    <!-- Custom styles for this template -->
    <link href="../css/agency.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
    <!-- My Style -->
    <style>
        .dropbtn {
            background-color: #212529;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #212529;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: white;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                .dropdown-content a:hover {
                    background-color: #212529;
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #212529;
        }

        .scrollFontSize {
            font-size: 60px;
        }

        .image {
            margin-left: 43%;
            margin-bottom: 5%;
            border-radius: 50% 50%;
            border: 2px solid #fed136;
        }

        .card {
            background:none;
            
            padding:10px;
            
        }

        .text-info {
            font-size: 20px;
            border-bottom: 2px groove gray;
        }

        .row {
            line-height: 35px;
        }

        .ctn {
            
            width: 100%;
        }

        .text-info {
            background: none;
            border: none;
            height: 25px;
            width: 200px;
           
        }

        .text-white {
            float: right;
            
            font-size: 20px;
            font-weight: bold;
            text-transform: uppercase;
        }
        .btn-info{
            float:right;
            background:none;
            border-radius:30px 30px;
            letter-spacing:2px;
            width:80%;
            align-self:center;
            margin-top:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ctn">
        <div class="card">

            <asp:Image ID="Image1" CssClass="image" runat="server" Height="200px" Width="200px" />


            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label1" runat="server" CssClass="text-white" Text="Name:"></asp:Label>
                        </div>
                        <div class="col-md-6">

                            <asp:TextBox ID="name" runat="server" CssClass="text-info" Enabled="False"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" CssClass=" text-white" Text="Gender:"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            
                            <asp:TextBox ID="gender" runat="server" CssClass="text-info"  Enabled="False"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label3" runat="server" CssClass=" text-white" Text="Email:"></asp:Label>
                        </div>
                        <div class="col-md-6">
                           
                            <asp:TextBox ID="email" runat="server" CssClass="text-info"  Enabled="False"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label10" runat="server" CssClass=" text-white" Text="Phone:" ></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="phone" runat="server" CssClass="text-info"  Enabled="False"></asp:TextBox>
                        </div>

                    </div>

                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label9" runat="server" CssClass=" text-white" Text="Country:"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="country" runat="server" CssClass="text-info"  Enabled="False"></asp:TextBox>
                        </div>

                    </div>

                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label8" runat="server" CssClass=" text-white" Text="State:"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="state" runat="server" CssClass="text-info"  Enabled="False"></asp:TextBox>
                        </div>

                    </div>

                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label7" runat="server" CssClass=" text-white" Text="City:"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="city" runat="server" CssClass="text-info"  Enabled="False"></asp:TextBox>
                        </div>

                    </div>

                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label6" runat="server" CssClass=" text-white" Text="Membership:"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="membership" runat="server" CssClass="text-info"  Enabled="False"></asp:TextBox>
                        </div>

                    </div>

                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label5" runat="server" CssClass=" text-white" Text="Payment:"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="payment" runat="server" CssClass="text-info"  Enabled="False"></asp:TextBox>
                        </div>

                    </div>

                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label4" runat="server" CssClass=" text-white" Text="Reason:"></asp:Label>
                        </div>
                        <div class="col-md-6">
                           <asp:TextBox ID="reason" runat="server" CssClass="text-info"  Enabled="False"></asp:TextBox>
                        </div>
                     
                    </div>

                </div>
                 
            </div>

            <asp:Button ID="Button1" runat="server" Text="Update Profile" CssClass="btn btn-info" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Update Profile" CssClass="btn btn-info" OnClick="Button2_Click" Visible="False" />

        </div>
    </div>
</asp:Content>
