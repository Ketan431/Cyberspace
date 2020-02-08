<%@ Page Title="" Language="C#" MasterPageFile="~/User/panel.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Cyberlaw.User.Products" %>
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
          .image {
            border-radius: 50% 50%;
            border: 2px solid #fed136;

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

        .dropbtn{
            float:right;
            box-shadow:0px 0px 10px 2px black;
        }
        .drp{
            float:left;
            box-shadow:0px 0px 10px 2px black;
        }

        .btn {
            border-radius: 10px 10px;
            border: none;
            color: antiquewhite;
            background-color: #228b22;
            width: 100%;
            letter-spacing: 2px;
        }

        .card-title{
            font-size:25px;
            max-width:600px;
            font-family:sans-serif;
            font-weight:600;
            text-align:center;
            position:relative;
            margin-left:20%;

        }

        .card-title:before{
            content:"";
            top:15px;
            display:block;
            width:50px;
            left:-55px;
            height:2px;
            position:absolute;
            background:#000;
         
        }

        .card-title:after{
            content:"";
            top:15px;
            display:block;
            width:50px;
            height:2px;
            position:absolute;
            background:#000;
            right:-55px;
        }

        .card-text{
            font-size:20px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
          <!--Products -->
           <div class="container ctn">
                <h3 class="text-info text-center">Our Security Products to maintain your privacy.</h3><hr />
               <div class="row">
                   <div class="col-md-6">
                       <asp:DropDownList CssClass="dropbtn" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="category" DataValueField="category">
                           
                       </asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT DISTINCT [category] FROM [tblproducts] ORDER BY [category]"></asp:SqlDataSource>
                   </div>

                   <br />
                   <hr />
                   <div class="col-md-6">
                       <asp:Button ID="Button1" runat="server" CssClass="dropbtn drp" Text="Get Products" OnClick="Button1_Click" />
                   </div>
               
               </div>
               <br />
               <hr />

               <div class="row">
                   <div class="col-lg-4">
                     
                       <div class="card">
                           <div>
                                                          
                               <asp:image runat="server" Height="300px" Width="100%" ID="prod1" CssClass="card-img"></asp:image>
                           </div>
                           <div class="card-body">
                               <asp:Label ID="prodname1" runat="server" Text="" CssClass="card-title"></asp:Label><br />
                               <asp:Label ID="desc1" runat="server" Text="" CssClass="card-text"></asp:Label>
                           </div>
                           <asp:LinkButton ID="LinkButton3" runat="server" CssClass="card-footer btn">BUY NOW &nbsp<i class="fa fa-shopping-cart"></i></asp:LinkButton>
                       </div>
                   </div>
                   <div class="col-lg-4">
                       <div class="card">
                           <div>
                               <asp:image runat="server" Height="300px" Width="100%" ID="prod2" CssClass="card-img"></asp:image>
                           </div>
                           <div class="card-body">
                               <asp:Label ID="prodname2" runat="server" Text="" CssClass="card-title"></asp:Label><br />
                               <asp:Label ID="desc2" runat="server" Text="" CssClass="card-text"></asp:Label>
                           </div>
                          
                               <asp:LinkButton ID="LinkButton1" runat="server" CssClass="card-footer btn">BUY NOW &nbsp<i class="fa fa-shopping-cart"></i></asp:LinkButton>
                           
                       </div>
                   </div>
                   <div class="col-lg-4">
                       <div class="card">
                           <div>
                               <asp:image runat="server" Height="300px" Width="100%" ID="prod3" CssClass="card-img"></asp:image>
                           </div>
                          <div class="card-body">
                               <asp:Label ID="prodname3" runat="server" Text="" CssClass="card-title"></asp:Label><br />
                               <asp:Label ID="desc3" runat="server" Text="" CssClass="card-text"></asp:Label>
                           </div>
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="card-footer btn">BUY NOW &nbsp<i class="fa fa-shopping-cart"></i></asp:LinkButton>
                       </div>
                   </div>
               </div>
            </div>

           
            <!-- Bootstrap core JavaScript -->
            <script src="../vendor/jquery/jquery.min.js"></script>
            <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Plugin JavaScript -->
            <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Contact form JavaScript -->
            <script src="../js/jqBootstrapValidation.js"></script>
            <script src="../js/contact_me.js"></script>

            <!-- Custom scripts for this template -->   
            <script src="../js/agency.min.js"></script>

            

        </div>
     </div>
</asp:Content>
