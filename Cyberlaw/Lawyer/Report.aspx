<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer/LawyerPanel.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Cyberlaw.Lawyer.Report" %>
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
            padding-bottom:5px;
        }
      .btn{
            margin-top:5%;
            width:20%;
            border-radius:30px 30px;
       
        }

    .auto-style1 {
        width: 1170px;
        height: 1062px;
        margin-left: auto;
        margin-right: auto;
        padding-left: 15px;
        padding-right: 15px;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style1">
        <div class="card">
            <h3 class="text-info" style="text-align:center">Report generation for each month</h3><hr />
            <div class="row">
                
                <div class="col-md-6">
                   <h4 style="text-align:justify" class="text-uppercase">Name:</h4> 
                    <asp:textbox ID="name" runat="server" CssClass="form-control"></asp:textbox>
                </div>
                <div class="col-md-6">
                   <h4 style="text-align:justify" class="text-uppercase">Date:</h4> 
                   <asp:textbox ID="date" runat="server" CssClass="form-control" TextMode="Date"></asp:textbox>
                </div>
                
                <div class="col-md-6">
                   <h4 style="text-align:justify" class="text-uppercase">Report Analysis:</h4>
                   <asp:textbox ID="analysis" runat="server" CssClass="form-control" ></asp:textbox>
                </div>
                <div class="col-md-6">
                   <h4 style="text-align:justify" class="text-uppercase">Complains Resolved:</h4>
                   <asp:textbox ID="cmpl" runat="server" CssClass="form-control" ></asp:textbox>
                </div>
                <div class="col-md-6">
                   <h4 style="text-align:justify" class="text-uppercase">Total Appointments:</h4> 
                   <asp:textbox ID="apt" runat="server" CssClass="form-control" ></asp:textbox>
                </div>
                 </div>
    
                <div class="content"><asp:button  ID="Button1" runat="server" text="Submit" CssClass="btn btn-primary"  OnClick="Button1_Click"  />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="View Reports" OnClick="Button2_Click" /></div>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" Visible="False" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" style="margin-top: 60px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                        <asp:BoundField DataField="analysis" HeaderText="Analysis" SortExpression="analysis" />
                        <asp:BoundField DataField="t_complains" HeaderText="Total Complains" SortExpression="t_complains" />
                        <asp:BoundField DataField="t_appoint" HeaderText="Total Appointments" SortExpression="t_appoint" />
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
              
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT * FROM [report]"></asp:SqlDataSource>
              
           
        </div>
    </div>
</asp:Content>
