<%@ Page Title="" Language="C#" MasterPageFile="~/User/panel.Master" AutoEventWireup="true" CodeBehind="Seminar.aspx.cs" Inherits="Cyberlaw.User.Seminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title></title>
    <link rel="icon" href="../img/icon.png" />

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../vendor/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="../vendor/jquery/jquery.js"></script>

    <!-- Custom fonts for this template -->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css' />

    <!-- Custom styles for this template -->
    <link href="../css/agency.css" rel="stylesheet" />
    <!-- My Style -->
    <style>
        .navbar > .container, .navbar > .container-fluid {
            padding: 5px;
        }

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
            border-radius: 50% 50%;
            border: 2px solid #fed136;

        }

        .ctn2{
            margin-top:5%;
            border-bottom:2px groove #fed136;
        }

        .txt{
            font-family:'Kaushan Script', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';;
            font-size:50px;
            text-align:center;
            margin-top:10%;
            color:#fed136;
            text-transform:uppercase;
        }

        .btn {
            border-radius: 10px 10px;
            border: none;
            color: antiquewhite;
            background-color: #228b22;
            width: 100%;
            letter-spacing: 2px;
        }

        .card {
            padding: 10px;
            margin-top:3%;
            border-radius: 10px 10px;
            box-shadow: 0px 3px 5px 2px #17a2b8;
        }

        .card-text{
            text-align:justify;
        }
    </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="container ctn2">
     
      <h2 class="txt">seminar on <br />cybersecurity and cyberlaw</h2>
    </div>

     <div class="container card">
            <div class="row">

                <div class="col-md-12 col-lg-4">
                    <div class="card">

                        <div class="card-img-top">
                            <img src="../img/team/1.jpg" height="200" width="330" />
                           
                        </div>
                         <div class="card-body">
                            <h4 class="card-title">Sarah Memon</h4>
                            <p class="card-text">Seminar on Cyberlaw</p>
                        </div>

                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="card-footer btn">Read More</asp:LinkButton>

                    </div>
                </div>
                <div class="col-md-12 col-lg-4">
                    <div class="card">

                        <div class="card-img-top">
                            <img src="../img/team/2.jpg" height="200" width="330" />
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Mark Wood</h4>
                            <p class="card-text">Seminar on Cyber Crime.</p>
                        </div>
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="card-footer btn">Read More</asp:LinkButton>
                    </div>
                </div>
                <div class="col-md-12 col-lg-4">
                    <div class="card">

                        <div class="card-img-top">
                            <img src="../img/team/3.jpg" height="200" width="330" />
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Maria Lee</h4>
                            <p class="card-text">Seminar on Cyber Security.</p>
                        </div>
                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="card-footer btn">Read More</asp:LinkButton>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="container" style="padding-top:30px;">
<iframe src="https://www.google.com/maps/d/u/0/embed?mid=1CfmvfNKrvgSO7WpCSQRp1hQhEMyS35I1" width="1100" height="480"></iframe>               </div>
                        </div>

            </div>
        </div>
</asp:Content>
