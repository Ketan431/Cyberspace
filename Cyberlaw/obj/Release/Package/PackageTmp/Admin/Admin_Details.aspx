<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="Admin_Details.aspx.cs" Inherits="Cyberlaw.Admin.Admin_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Admin Profile</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet" />

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
        <div class="container-fluid">
            <div class="row details">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="text-info text-center">Create Profile</h4>
                        </div>
                        <div class="content">

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card card-user cd">
                                        <div class="image">
                                            <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..." />
                                        </div>
                                        <div class="content">
                                            <div class="author">
                                                <a href="#">
                                                    <img class="avatar border-gray" src="assets/img/faces/face-3.jpg" alt="..." />

                                                    <h4 class="title">Ketan Bhenwal<br />
                                                        <small>luciferk214</small>
                                                    </h4>
                                                </a>
                                            </div>
                                            <p class="description text-center">
                                                "Lamborghini Mercy
                                                            <br>
                                                Your chick she so thirsty
                                                            <br>
                                                I'm in that two seat Lambo"
                                            </p>
                                        </div>
                                       
                                        
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>Company</label>
                                        <br />
                                        <asp:TextBox ID="c_name" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="Company name">Kloud Innovizionz</asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="c_name" CssClass="text-warning" ErrorMessage="Please Enter Company Name" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Username</label>
                                        <asp:TextBox ID="u_name" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="Username">Luciferk214</asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="u_name" CssClass="text-warning" ErrorMessage="Please Enter User Name" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        <br />
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <asp:TextBox ID="email" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="Email">ketan@gmail.com</asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" CssClass="text-warning" ErrorMessage="Please Enter Email Address" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>First Name</label>
                                        <asp:TextBox ID="f_name" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="First Name">Ketan</asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="f_name" CssClass="text-warning" ErrorMessage="Please Enter First Name" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <asp:TextBox ID="l_name" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="Last name">Bhenwal</asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="l_name" CssClass="text-warning" ErrorMessage="Please Enter Last Name"></asp:RequiredFieldValidator>
                                        <br />
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <br />
                                         <asp:TextBox ID="addr" runat="server" CssClass="form-control" Rows="5" TextMode="MultiLine" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="Address"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="addr" CssClass="text-warning" ErrorMessage="Please Enter Address Name" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        <br />
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>City</label>
                                        <asp:TextBox ID="city" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="City"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="city" CssClass="text-warning" ErrorMessage="Please Enter City" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Country</label>
                                        <asp:TextBox ID="country" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="Country"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="country" CssClass="text-warning" ErrorMessage="Please Enter Country" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Postal Code</label>
                                        <asp:TextBox ID="p_code" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="Postal Code"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="p_code" CssClass="text-warning" ErrorMessage="Please Enter Postal Code" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <div class="row row2">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>About Me</label>
                                        <asp:TextBox ID="aboutme" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="MediumPurple" ToolTip="About me"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="aboutme" CssClass="text-warning" ErrorMessage="Enter info" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <asp:Button ID="Button2" runat="server" style="border-radius:30px 30px;box-shadow:2px 2px 7px 3px #1DC7EA; margin-left: 67px;" CssClass="btn-info active focus" Text="Insert Data" BorderWidth="5px" Height="50px" Width="38%" BorderStyle="None" OnClick="Button2_Click" />
                            <div class="clearfix"></div>

                        </div>
                    </div>
                </div>

            </div>
        </div>




        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">Home
                            </a>
                        </li>
                        <li>
                            <a href="#">Company
                            </a>
                        </li>
                        <li>
                            <a href="#">Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy;
                        <script>document.write(new Date().getFullYear())</script>
                    <a href="#"><span class="auto-style2">Cyberlaw</span></a>, made with love for a better web
               
                </p>
            </div>
        </footer>
    </div>

</asp:Content>

