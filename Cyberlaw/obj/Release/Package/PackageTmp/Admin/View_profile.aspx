<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="View_profile.aspx.cs" Inherits="Cyberlaw.Admin.View_profile"%>
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

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
   
  
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
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 class="text-info">Admin Profile</h2>
        <br />

        <div style="display:flex">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" ToolTip="Enter record to search"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn btn-info" Width="100px" />
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="fa fa-search" />
        </div>
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="3" GridLines="Horizontal" HorizontalAlign="Justify" BackColor="White" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/Admin/assets/img/edit.png" runat="server" CommandName="Edit" ToolTip="Delete" Width="25px" Height="25px"/>
                        <asp:ImageButton ImageUrl="~/Admin/assets/img/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="25px" Height="25px"/>
                        
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ImageUrl="~/Admin/assets/img/update.png" runat="server" CommandName="Update" ToolTip="Update" Width="25px" Height="25px"/>
                        <asp:ImageButton ImageUrl="~/Admin/assets/img/cancel.png" runat="server" CommandName="Cancel" ToolTip="Update" Width="25px" Height="25px"/>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="c_name" HeaderText="Company Name" SortExpression="c_name" />
                <asp:BoundField DataField="u_name" HeaderText="Username" SortExpression="u_name" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="f_name" HeaderText="First Name" SortExpression="f_name" />
                <asp:BoundField DataField="l_name" HeaderText="Last Name" SortExpression="l_name" />
                <asp:BoundField DataField="addr" HeaderText="Address" SortExpression="addr" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="p_code" HeaderText="Postal Code" SortExpression="p_code" />
                <asp:BoundField DataField="about" HeaderText="About" SortExpression="about" />

                
                
            </Columns>
            <EditRowStyle BorderStyle="Groove" />
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

       
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT * FROM [admin] ORDER BY [id]" DeleteCommand="DELETE FROM [admin] WHERE [id]=@id" InsertCommand="INSERT INTO [admin]([c_name],[u_name],[email],[f_name],[l_name],[addr],[city],[country],[p_code],[about]) VALUES(@c_name,@u_name,@email,@f_name,@l_name,@addr,@city,@country,@p_code,@about)" UpdateCommand="UPDATE [admin] SET[c_name]=@c_name,[u_name]=@u_name,[email]=@email,[f_name]=@f_name,[l_name]=@l_name,[addr]=@addr,[city]=@city,[country]=@country,[p_code]=@p_code,[about]=@about
WHERE [u_name]=@u_name">
            <DeleteParameters>
                <asp:Parameter Name="id" />
                
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="c_name" />
                <asp:Parameter Name="u_name" />
                <asp:Parameter Name="email" />
                <asp:Parameter Name="f_name" />
                <asp:Parameter Name="l_name" />
                <asp:Parameter Name="addr" />
                <asp:Parameter Name="city" />
                <asp:Parameter Name="country" />
                <asp:Parameter Name="p_code" />
                <asp:Parameter Name="about" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="c_name" />
                <asp:Parameter Name="u_name" />
                <asp:Parameter Name="email" />
                <asp:Parameter Name="f_name" />
                <asp:Parameter Name="l_name" />
                <asp:Parameter Name="addr" />
                <asp:Parameter Name="city" />
                <asp:Parameter Name="country" />
                <asp:Parameter Name="p_code" />
                <asp:Parameter Name="about" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
       
     
    </div>
</asp:Content>
