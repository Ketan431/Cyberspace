<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="Lawyerpanel.aspx.cs" Inherits="Cyberlaw.Admin.Lawyerpanel" %>
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
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <h2 class="text-info">Total Lawyers in Database</h2>
            
            <asp:GridView ID="GridView1" runat="server" OnRowDataBound ="grd_RowDataBound" AutoGenerateColumns="false" Width="1000px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table">
                 <Columns>

                    <asp:BoundField DataField="id" HeaderText="Id" />
                     <asp:TemplateField HeaderText="image">
                        <ItemTemplate>
                          <img src='<%# Eval("image") %>' id="imageControl" runat="server" style="height:60px;width:60px"/>
                        </ItemTemplate>   
                    </asp:TemplateField> 
                    
                    
                  
                    <asp:BoundField DataField="lawyer_id" HeaderText="Lawyer ID" />

                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" /> 
                    <asp:BoundField DataField="position" HeaderText="Position" />
                    <asp:BoundField DataField="achieve" HeaderText="Achievements" />
                   
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
        </div>
    </div>
</asp:Content>
