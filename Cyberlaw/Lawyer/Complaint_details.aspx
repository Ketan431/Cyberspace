<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer/LawyerPanel.Master" AutoEventWireup="true" CodeBehind="Complaint_details.aspx.cs" Inherits="Cyberlaw.Lawyer.Complaint_details" %>

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
    
        .card{
            width:95%;
        }

        .btn2{
            margin-top:-3.5%;
            width:20%;
            margin-right:5%;
            border-radius:30px 30px;
        }

        .table {
            margin-left:1%;
            width: 75%;
        }


        .card{
            line-height:25px;
            font-size:17px;
            padding:10px;
            line-height:25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <h3 class="text-info">Enter Complain details.</h3>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Issuer's name" CssClass="text-uppercase"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label2" runat="server" Text="Email" CssClass="text-uppercase"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label3" runat="server" Text="Gender" CssClass="text-uppercase"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label4" runat="server" Text="Complain Details" CssClass="text-uppercase"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Rows="5" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label5" runat="server" Text="Status" CssClass="text-uppercase"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>Resolved</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                    </asp:DropDownList><br />
                </div>
                </div><br />
            
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-info btn2" Text="Click to view all complains." OnClick="Button2_Click" />
            
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-info btn2" Text="Submit" OnClick="Button1_Click"/>
            <hr />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" Visible="False" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowSorting="True" Font-Names="Algerian">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="c_name" HeaderText="Client Name" SortExpression="c_name" />
                    <asp:BoundField DataField="c_email" HeaderText="Email" SortExpression="c_email" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                    <asp:BoundField DataField="complain" HeaderText="Complain" SortExpression="complain" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT * FROM [complain]"></asp:SqlDataSource>
        </div>
    </div>
            
</asp:Content>
