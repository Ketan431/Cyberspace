<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="Control_panel.aspx.cs" Inherits="Cyberlaw.Admin.Control_panel" Async ="true"%>
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

    <style type="text/css">
    
        @media only screen and (max-width: 768px) {
          /* For mobile phones: */
          [class*="col-"] {
            width: 100%;
          }
        }

        
        
         h2 {
            font-family:Goudy Old Style;
            color:mediumpurple;
            box-shadow:2px 2px 2px 2px mediumpurple;
            border-radius:10px 10px;
            font-size:30px;
            padding:5px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
            
            <div class="col-md-6 ">
                <h2>User Details</h2>

                
                <asp:TextBox ID="usrname" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
<br />
                <asp:Button ID="Button1" runat="server" Text="Submit" style="border-radius:30px 30px;box-shadow:1px 1px 5px 1px purple;" CssClass="btn-info" ForeColor="#FF3300" BorderStyle="None" Width="200px" OnClick="Button1_Click" />

                
                <br />
                <br />
                <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" CssClass="table">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <br />
                <br />
               <!-- <asp:Table ID="Table1" CssClass="table" runat="server" Height="20px" HorizontalAlign="Center" Width="400px">
                    <asp:TableRow ID="row1" runat="server">
                        <asp:TableCell runat="server">Name</asp:TableCell>
                        <asp:TableCell runat="server">Email</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="row2" runat="server">
                        <asp:TableCell ID="col1" runat="server"></asp:TableCell>
                        <asp:TableCell ID="col2" runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="row3" runat="server">
                        <asp:TableCell ID="col3" runat="server"></asp:TableCell>
                        <asp:TableCell ID="col4" runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="row4" runat="server">
                        <asp:TableCell ID="col5" runat="server"></asp:TableCell>
                        <asp:TableCell ID="col6" runat="server"></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>-->
                <br />

                <asp:Label ID="lbl" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lbl1" runat="server"></asp:Label>

                <br />

            </div>

            <div class="col-md-6">
                <h2>Lawyer Details</h2>
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" CssClass="table">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </div>

        </div>
    </div>
 
</asp:Content>
