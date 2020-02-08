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

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    <style>
      .card{
          margin-left:20%;
          width:105%;
      }

      
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <div>
            <div class="row">
                <div>
                    <div class="card">
                        <div class="header">
                            <h3 class="text-info text-center">Create Profile</h3>
                        </div>
                        <div class="content">

                          
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label style="color:black;font-size:17px;">Image</label>
                                        <br />
                                        <asp:FileUpload ID="image" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="Black" ToolTip="Insert image"/>
                                        
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="image" CssClass="text-warning" ErrorMessage="Image Required" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label style="color:black;font-size:17px;">Username</label>
                                        <asp:TextBox ID="u_name" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="Black" ToolTip="Username"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="u_name" CssClass="text-warning" ErrorMessage="Please Enter User Name" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        <br />
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1" style="color:black;font-size:17px;">Email address</label>
                                        <asp:TextBox ID="email" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="Black" ToolTip="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" CssClass="text-warning" ErrorMessage="Please Enter Email Address" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label style="color:black;font-size:17px;">First Name</label>
                                        <asp:TextBox ID="f_name" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="Black" ToolTip="First Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="f_name" CssClass="text-warning" ErrorMessage="Please Enter First Name" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label style="color:black;font-size:17px;">Last Name</label>
                                        <asp:TextBox ID="l_name" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="Black" ToolTip="Last name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="l_name" CssClass="text-warning" ErrorMessage="Please Enter Last Name"></asp:RequiredFieldValidator>
                                        <br />
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label style="color:black;font-size:17px;">Address</label>
                                        <br />
                                         <asp:TextBox ID="addr" runat="server" CssClass="form-control" Rows="5" TextMode="MultiLine" BorderStyle="Outset" ForeColor="Black" ToolTip="Address"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="addr" CssClass="text-warning" ErrorMessage="Please Enter Address Name" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        <br />
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label style="color:black;font-size:17px;">City</label>
                                        <asp:TextBox ID="city" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="Black" ToolTip="City"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="city" CssClass="text-warning" ErrorMessage="Please Enter City" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label style="color:black;font-size:17px;">Country</label>
                                        <asp:TextBox ID="country" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="Black" ToolTip="Country"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="country" CssClass="text-warning" ErrorMessage="Please Enter Country" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label style="color:black;font-size:17px;">Postal Code</label>
                                        <asp:TextBox ID="p_code" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="Black" ToolTip="Postal Code"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="p_code" CssClass="text-warning" ErrorMessage="Please Enter Postal Code" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <div class="row row2">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label style="color:black;font-size:17px;">About Me</label>
                                        <asp:TextBox ID="aboutme" runat="server" CssClass="form-control" BorderStyle="Outset" ForeColor="Black" ToolTip="About me"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="aboutme" CssClass="text-warning" ErrorMessage="Enter info" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>

                            <asp:Button ID="Button2" runat="server" style="border-radius:30px 30px;" CssClass="btn btn-info" Text="Insert Data" OnClick="Button2_Click" font-size="Larger"/>
                            <asp:Button ID="Button1" runat="server" style="border-radius:30px 30px;" CssClass="btn btn-info" Text="Update Data" font-size="Larger" OnClick="Button1_Click"/>


                        </div>
                    </div>
                </div>

            </div>
        </div>




        
    </div>

</asp:Content>

