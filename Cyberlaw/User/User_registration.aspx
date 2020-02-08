<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_registration.aspx.cs" Inherits="Cyberlaw.User_registration" MasterPageFile="~/User/panel.Master" %>


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

        .btn{
            width:100%;
            border-radius:30px 30px;
        }
    </style>
   </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
          <!--Registration Form -->
           <div class="container ctn">
                <h2 class="text-info">Get regular updates first and addition functionalities and additional web security consults.</h2>
               <h4 class="text-danger">Register as a prime member.</h4>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <asp:FileUpload ID="FileUpload1" ToolTip="upload image" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Image Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <asp:TextBox ID="fname" Text="First Name" runat="server" CssClass="form-control" ToolTip="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fname" ErrorMessage="Required First name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <asp:TextBox ID="lname" Text="Last Name" runat="server" CssClass="form-control" ToolTip="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lname" ErrorMessage="Required Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    
                </div>
              
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                    <asp:DropDownList CssClass="form-control" ID="gender" runat="server" ToolTip="Gender">
                        <asp:ListItem>Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="gender" ErrorMessage="Select atleast one" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                    <div class="col-lg-4 col-md-6">
                        <asp:TextBox ID="email" Text="Email Address" runat="server" CssClass="form-control" TextMode="Email" ToolTip="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <asp:TextBox ID="phone" Text="Phone Number" runat="server" CssClass="form-control" TextMode="Phone" ToolTip="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="phone" ErrorMessage="Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <asp:DropDownList ID="Country" CssClass="form-control" runat="server" ToolTip="Country">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>Berminghum</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>Denmark</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                            <asp:ListItem>Holand</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Korea</asp:ListItem>
                            <asp:ListItem>London</asp:ListItem>
                            <asp:ListItem>Manchester</asp:ListItem>
                            <asp:ListItem>Norway</asp:ListItem>
                            <asp:ListItem>Paris</asp:ListItem>
                            <asp:ListItem>Quebec</asp:ListItem>
                            <asp:ListItem>England</asp:ListItem>
                            <asp:ListItem>Greek</asp:ListItem>
                            <asp:ListItem>Bangladesh</asp:ListItem>
                            <asp:ListItem>Pakistan</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Country" ErrorMessage="Country Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <asp:TextBox ID="state" Text="State" runat="server" CssClass="form-control" ToolTip="State"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="state" ErrorMessage="State Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <asp:TextBox ID="city" Text="City" runat="server" CssClass="form-control" ToolTip="City"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="city" ErrorMessage="City Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <asp:DropDownList ID="membership" CssClass="form-control" runat="server" ToolTip="Membership Duration">
                            <asp:ListItem>Select Membership Type</asp:ListItem>
                            <asp:ListItem>3 Months</asp:ListItem>
                            <asp:ListItem>6 Months</asp:ListItem>
                            <asp:ListItem>12 Months</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="membership" ErrorMessage="Select atleast one" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <asp:DropDownList ID="payment" CssClass="form-control" runat="server" ToolTip="Payment Type">
                            <asp:ListItem>Select Payment Type</asp:ListItem>
                            <asp:ListItem>Debit Card</asp:ListItem>
                            <asp:ListItem>Credit Card</asp:ListItem>
                            <asp:ListItem>Paypal</asp:ListItem>
                            <asp:ListItem>Paytm</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="payment" ErrorMessage="Select atleast one" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <asp:TextBox ID="desc" Text="Reason for becoming Member" runat="server" CssClass="form-control" ToolTip="About Yourself"></asp:TextBox>
                    </div>

                   

                    <div class="col-lg-4 col-md-6">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Submit Details" OnClick="Button1_Click" />
                    </div>
                   
                        <asp:Label ID="error" runat="server" Text="" CssClass="text-danger"></asp:Label>
                   
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
</asp:content>
