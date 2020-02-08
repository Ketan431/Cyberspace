<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/panel.Master" AutoEventWireup="true" CodeBehind="Control_panel.aspx.cs" Inherits="Cyberlaw.Admin.Control_panel"%>
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
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    <style type="text/css">
    
        @media only screen and (max-width: 768px) {
          /* For mobile phones: */
          [class*="col-"] {
            width: 100%;
          }
        }

        .table{
            width:100%;
        }

        .card{
            width:150%;
        }
        
      

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container card content">
        <div class="row">
            
            <div class="col-md-12 ">
                <h2 class="text-info">All Admin Details</h2>

                
                <asp:TextBox ID="usrname" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
<br />
                <asp:Button ID="Button1" runat="server" Text="Submit" style="border-radius:30px 30px;" CssClass="btn btn-info"  Width="200px" OnClick="Button1_Click" />

                
                <br />
                <br />
                <asp:GridView runat="server" ID="GridView1" HeaderStyle-BackColor="Tomato" OnRowDataBound ="grd_RowDataBound"  AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table">

                <Columns>

                    <asp:BoundField DataField="id" HeaderText="Id" />
                     <asp:TemplateField HeaderText="image">
                        <ItemTemplate>
                          <img src='<%# Eval("image") %>' id="imageControl" runat="server" style="height:60px;width:60px"/>
                        </ItemTemplate>   
                    </asp:TemplateField> 
                    
                    
                    <asp:BoundField DataField="u_name" HeaderText="Username" />
                    <asp:BoundField DataField="email" HeaderText="Email" />

                    <asp:BoundField DataField="f_name" HeaderText="FirstName" />
                    <asp:BoundField DataField="l_name" HeaderText="LastName" />
                    <asp:BoundField DataField="addr" HeaderText="Address" />
                    <asp:BoundField DataField="city" HeaderText="City" /> 
                    <asp:BoundField DataField="country" HeaderText="Country" />
                    <asp:BoundField DataField="p_code" HeaderText="Postal Code" />
                    <asp:BoundField DataField="about" HeaderText="About" />
                </Columns>

                    <FooterStyle BackColor="White" ForeColor="#000066" />

<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
                <br />
                <br />
              
                <br />

                <asp:Label ID="lbl" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lbl1" runat="server"></asp:Label>

                <br />

            </div>

            

        </div>
    </div>
 
</asp:Content>
