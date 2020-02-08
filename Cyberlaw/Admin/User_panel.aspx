 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="User_panel.aspx.cs" Inherits="Cyberlaw.Admin.User_panel" %>
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


    <style type="text/css">
         .auto-style1 {
             display: block;
             font-size: 14px;
             line-height: 1.42857143;
             color: #565656;
             border-radius: 4px;
             -webkit-box-shadow: none;
             box-shadow: none;
             -webkit-transition: all 300ms linear;
             -o-transition: all 300ms linear;
             transition: all 300ms linear;
             -moz-transition: all 300ms linear;
             -ms-transition: all 300ms linear;
             border: 1px solid #E3E3E3;
             padding: 8px 12px;
             margin-right:10px;
             background-color: #FFFFFF;
             background-image: none;
         }

         .card{
             width:1400px;
         }
      
    </style>
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
        
            <h2 class="text-info text-center">All Users in Database.</h2>
            <strong class="text-info content">Search records by input.</strong>
            <div class="content" style="display:flex">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" ToolTip="Enter record to search"></asp:TextBox>

            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success"><i class="fa fa-search"></i></asp:LinkButton><br />

            </div>
            <div class="content">
                <asp:gridview ID="gridview" runat="server" BackColor="White" BorderColor="#CCCCCC" OnRowDataBound ="grd_RowDataBound" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="id">
                    <Columns>
                       <asp:TemplateField>
                    <ItemTemplate>
                        
                        <asp:ImageButton ImageUrl="~/Admin/assets/img/delete.png" ID="delete" runat="server" CommandName="Delete" ToolTip="Delete" Width="25px" Height="25px"/>
                        
                    </ItemTemplate>
                    
                </asp:TemplateField>

                      
                        <asp:BoundField HeaderText="ID" DataField="id" />
                        <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                          <img src='<%# Eval("image") %>' id="imageControl" runat="server" style="height:60px;width:60px"/>
                        </ItemTemplate>   
                        </asp:TemplateField> 
                        <asp:BoundField HeaderText="MemBer ID" DataField="member_id" />
                        <asp:BoundField HeaderText="Name" DataField="name" />
                        <asp:BoundField HeaderText="Gender" DataField="gender" />
                        <asp:BoundField HeaderText="Email" DataField="email" />
                        <asp:BoundField HeaderText="Phone" DataField="phone" />
                        <asp:BoundField HeaderText="Country" DataField="country" />
                        <asp:BoundField HeaderText="State" DataField="state" />
                        <asp:BoundField HeaderText="City" DataField="city" />
                        <asp:BoundField HeaderText="Membership" DataField="membership" />
                        <asp:BoundField HeaderText="Payment" DataField="payment" />
                        <asp:BoundField HeaderText="Reason" DataField="desc" />
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
                </asp:gridview>
            </div>
        
            </div>
    
    </div>
</asp:Content>
