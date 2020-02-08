<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="add_products.aspx.cs" Inherits="Cyberlaw.Admin.add_products" %>
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
        .card{
            padding:10px;
            line-height:25px;
        }

     
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="row">
                <h3 class="text-info text-center">Add Products</h3>
                <div class="col-md-6">
                    <asp:fileupload runat="server" CssClass="form-control" Tooltip="Upload Image" ID="img"></asp:fileupload><br />
                </div>
                <div class="col-md-6">
                    <asp:textbox runat="server" Text="Product Name" CssClass="form-control" Tooltip="Product Name" ID="pname"></asp:textbox><br />
                </div>
                <div class="col-md-6">
                    <asp:dropdownlist runat="server" CssClass="form-control" ID="p_cat">
                        <asp:ListItem>Cyber Security</asp:ListItem>
                        <asp:ListItem>Network Security</asp:ListItem>
                        <asp:ListItem>Email Security</asp:ListItem>
                    </asp:dropdownlist><br />
                </div>
                
                <div class="col-md-6">
                    <asp:textbox runat="server" Text="Product Desc" CssClass="form-control" Tooltip="Product Desc" ID="p_desc"></asp:textbox><br />
                </div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" OnClick="Button1_Click" Text="Add New Product" />
                   
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="View All Products" OnClick="Button2_Click" /><br />
                    </div> </div>
                    <br /><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="table table bordered" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="Sr No." InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="prodID" HeaderText="Product Id" ReadOnly="True" SortExpression="prodID" />
                            <asp:BoundField DataField="prodname" HeaderText="Product Name" SortExpression="prodname" />
                            <asp:BoundField DataField="category" HeaderText="Product Category" SortExpression="category" />
                            <asp:BoundField DataField="productdesc" HeaderText="Product Description" SortExpression="productdesc" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT * FROM [tblproducts]"></asp:SqlDataSource>
             
                
           
        </div>
    </div>
</asp:Content>
