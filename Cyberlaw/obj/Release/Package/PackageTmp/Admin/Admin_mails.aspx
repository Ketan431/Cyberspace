<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="Admin_mails.aspx.cs" Inherits="Cyberlaw.Admin.Admin_mails" %>
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
        #Button1 {
            border: 0px;
        }
        
        @media only screen and (max-width: 768px) {
          /* For mobile phones: */
          [class*="col-"] {
            width: 100%;
          }
        }


        

        .details{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:20px;
            padding:5px;
        }

        .auto-style2 {
            color: #1DC7EA;
        }
        #Button2 {
            border: 0px;
        }
        
        .cd{
            margin-left:60%;
            width:200%;
        }
     
        #Button3 {
            border: 0px;
        }
        
                
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="table" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="u_name" HeaderText="u_name" SortExpression="u_name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT * FROM [messages]"></asp:SqlDataSource>
</asp:Content>
