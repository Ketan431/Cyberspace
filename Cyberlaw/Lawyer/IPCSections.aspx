<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer/LawyerPanel.Master" AutoEventWireup="true" CodeBehind="IPCSections.aspx.cs" Inherits="Cyberlaw.Lawyer.IPCSections" %>
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
            padding:10px;
        }
        .table{
            width:70%;
            margin-left:15%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <h3 class="text-info" style="font-size:30px;font-weight:200;text-align:center;">IPC Sections</h3><hr />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                      
                        <asp:ImageButton ImageUrl="~/Lawyer/assets/img/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="25px" Height="25px"/>
                        
                    </ItemTemplate>
                    
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Sections" HeaderText="Sections" SortExpression="Sections" />
                    <asp:BoundField DataField="Offences" HeaderText="Offences" SortExpression="Offences" />
                   
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" InsertCommand="INSERT INTO [section]([Sections],[Offences])  values([@Sections,@Offences]) " SelectCommand="SELECT * FROM [section]" DeleteCommand="DELETE FROM [section] WHERE [ID]=@ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            
        </div></div>
</asp:Content>
