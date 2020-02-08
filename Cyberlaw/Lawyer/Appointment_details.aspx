<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer/LawyerPanel.Master" AutoEventWireup="true" CodeBehind="Appointment_details.aspx.cs" Inherits="Cyberlaw.Lawyer.Appointment_details" %>
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
        
        .btn{
            margin-top:10%;
            width:20%;
            float:right;
            margin-right:28%;
            border-radius:30px 30px;
        }
        .btn2{
            
            width:40%;
            float:right;
            margin-right:5%;
            border-radius:30px 30px;
        }


        .card{
            padding:10px;
            line-height:25px;
            width:95%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <h3>Enter Appointment Details</h3>
            <div class="row">
                <div class="col-md-6">
                   
                        <asp:Label ID="Label1" runat="server" Text="Client name" CssClass="text-uppercase"></asp:Label>
                 
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                   
                        <asp:Label ID="Label2" runat="server" Text="Client Email" CssClass="text-uppercase"></asp:Label>
                 
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-6">
                   
                        <asp:Label ID="Label6" runat="server" Text="Purpose" CssClass="text-uppercase"></asp:Label>
                 
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-6">
                   
                        <asp:Label ID="Label3" runat="server" Text="Date" CssClass="text-uppercase"></asp:Label>
                 
                    
                 
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                    <div class="col-md-6">
                   
                        <asp:Label ID="Label4" runat="server" Text="Status" CssClass="text-uppercase"></asp:Label>
                 
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem>Attended</asp:ListItem>
                            <asp:ListItem>Not attended</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-info" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Click to view all Appointment" CssClass="btn btn-info btn2" OnClick="Button2_Click" />

                </div>
 </div>
                <br />
               
                
                <asp:Label ID="Label5" runat="server" Text="All Appointments" Visible="false" Font-Size="25px"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" DataSourceID="SqlDataSource1" Visible="False" style="margin-left: 0px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="c_name" HeaderText="Client Name" SortExpression="c_name" />
                        <asp:BoundField DataField="c_email" HeaderText="Email" SortExpression="c_email" />
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                        <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT * FROM [tbl_appointment]"></asp:SqlDataSource>
           
        </div>
    </div>
</asp:Content>
