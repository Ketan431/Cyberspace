<%@ Page Title="" Language="C#" MasterPageFile="~/Lawyer/LawyerPanel.Master" AutoEventWireup="true" CodeBehind="Lawyer_mails.aspx.cs" Inherits="Cyberlaw.Lawyer.Lawyer_mails" %>

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
        .textbox, .form-control {
            padding: 5px;
            border-radius: 10px 10px;
        }

        .crd1 {
            padding: 5px;
            box-shadow: 0px 0px 15px 0px mediumpurple;
        }

        .card {
            padding: 20px;
            padding-left: 30px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container card">
        <div class="row">
            <div class="col-lg-6 col-md-12 pull-left card crd1">
                <h2 class="text-capitalize">&nbsp Message Portal</h2>
                <hr />
                <div class="col-lg-6 col-md-6 textbox">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>From</asp:ListItem>
                        <asp:ListItem>Lucifer</asp:ListItem>
                        <asp:ListItem>Brendon</asp:ListItem>
                        <asp:ListItem>Rection</asp:ListItem>
                        <asp:ListItem>Markov</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-6 col-md-6 textbox">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem>To</asp:ListItem>
                        <asp:ListItem>Lucifer</asp:ListItem>
                        <asp:ListItem>Brendon</asp:ListItem>
                        <asp:ListItem>Rection</asp:ListItem>
                        <asp:ListItem>Markov</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-6 col-md-6 textbox">
                    <asp:TextBox ID="TextBox3" CssClass="form-control" Text="Subject" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-6 col-md-6 textbox">
                    <asp:TextBox ID="TextBox4" CssClass="form-control" Text="Admin Id" runat="server"></asp:TextBox>
                </div>

                <div class="col-lg-12 col-md-12 textbox">
                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" Rows="5" Text="Message" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="col-lg-12 col-md-12 textbox">
                    <asp:Button ID="Button1" runat="server" Text="SEND MESSAGE" CssClass="btn btn-info form-control" BorderColor="Black" ForeColor="#FF33CC" Font-Size="15pt" OnClick="Button1_Click1" />

                </div>


            </div>
            <div class="col-lg-6 col-md-12 pull-right">
                <h3 class="text-info">All Messages.</h3>
                <asp:GridView runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table" DataSourceID="SqlDataSource1" DataKeyNames="id">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="from" HeaderText="from" SortExpression="from" />
                        <asp:BoundField DataField="to" HeaderText="to" SortExpression="to" />
                        <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:BoundField DataField="admin_id" HeaderText="admin_id" SortExpression="admin_id" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT * FROM [messages]"></asp:SqlDataSource>
            </div>
        </div>
    </div>

</asp:Content>
