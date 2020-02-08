<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="Admin_dashboard.aspx.cs" Inherits="Cyberlaw.Admin.admin_dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
        h3{
            margin-left:5%;
            font-weight:bold;
            color:#000000;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
        <div class="container card">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <h3>Users from different countries</h3>
                    <asp:chart runat="server" ID="ctl00" DataSourceID="SqlDataSource1" Height="400px" Width="400px">
                        <Series><asp:Series Name="Series1" XValueMember="country" YValueMembers="Column1"></asp:Series></Series>
                        <ChartAreas><asp:ChartArea Name="ChartArea1">

                                    </asp:ChartArea></ChartAreas>

                    </asp:chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT count(country),country FROM [admin] group by country"></asp:SqlDataSource>
                </div>
                <div class="col-lg-6 col-md-12">
                    <h3>Lawyers Based on positions</h3>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Height="400px" Width="400px" Palette="Berry">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="position" YValueMembers="Column1" YValuesPerPoint="2">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT count(position),position FROM [tbl_lawyer] group by position"></asp:SqlDataSource>

                    

                </div>


                <div class="col-lg-6">
                    <h3>Feedback Analysis</h3>
                        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" BackColor="" BackImageAlignment="Center" Height="400px" Palette="None" PaletteCustomColors="Teal" RightToLeft="Yes" Width="400px">
                        <Series>
                            <asp:Series ChartType="Line" Name="Series1" XValueMember="feedback" YValueMembers="Column1">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT  feedback,count(service) FROM [feedback] group by feedback"></asp:SqlDataSource>

                </div>

                <div class="col-lg-6">
                    <h3>Types of products</h3>
                        <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource4" BackColor="" BackImageAlignment="Center" Height="400px" Palette="None" PaletteCustomColors="Teal" RightToLeft="Yes" Width="400px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="category" YValueMembers="Column1" YValuesPerPoint="2">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                       <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT  category,count(category) FROM [tblproducts] group by category"></asp:SqlDataSource>

                </div>

            </div>

        </div>
    </div>
    

</asp:Content>
