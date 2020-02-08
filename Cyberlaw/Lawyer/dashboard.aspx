<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer/LawyerPanel.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Cyberlaw.Lawyer.dashboard" %>
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
            padding:3px;
            padding-bottom:5px;
            width:1150px;
        }


        h3{
            margin-left:5%;
            font-weight:bold;
            color:#000000;

        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="row">
          
            <div class="col-md-6">
                <h3>Complains Status</h3>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource4" Height="400px" Width="400px" CssClass="text-center">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="status" YValueMembers="Column1"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT status,count(status) FROM [complain]  group by status"></asp:SqlDataSource>
            </div>

            <div class="col-md-6">
                <h3>Appointment Status</h3>
                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" Height="400px" Width="400px" CssClass="text-center">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="status" YValueMembers="Column1"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT status,count(status) FROM [tbl_appointment]  group by status"></asp:SqlDataSource>
           
            </div>
            <div class="col-md-6">
                <h3>Feedback Analysis</h3>
                <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource2" BackColor="" BackImageAlignment="Center" Height="400px" Palette="None" PaletteCustomColors="Teal" RightToLeft="Yes" Width="600px">
                <Series>
                    <asp:Series ChartType="Line" Name="Series1" XValueMember="feedback" YValueMembers="Column1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
           
            </div>

            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT  feedback,count(service) FROM [feedback] group by feedback"></asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
