<%@ Page Title="" Language="C#" MasterPageFile="~/User/panel.Master" AutoEventWireup="true" CodeBehind="sections.aspx.cs" Inherits="Cyberlaw.User.sections" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Cyberlaw</title>
    <link rel="icon" href="../img/icon.png" />


    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <!-- Custom fonts for this template -->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css' />

    <!-- Custom styles for this template -->
    <link href="../css/agency.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
    <!-- My Style -->
    <style>
          .image {
            border-radius: 50% 50%;
            border: 2px solid #fed136;
        }
        .dropbtn {
            background-color: #212529;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #212529;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: white;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                .dropdown-content a:hover {
                    background-color: #212529;
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #212529;
        }

        .scrollFontSize {
            font-size: 60px;
        }

        #gridview {
            margin-top: 10%;
        }

        .btn {
            border-radius: 10px 10px;
            border: none;
            color: antiquewhite;
            background-color: #228b22;
            width: 100%;
            letter-spacing: 2px;
        }

        .card {
            padding: 10px;
            
            border-radius: 10px 10px;
            box-shadow: 0px 3px 5px 2px #17a2b8;
        }

        .card-text{
            text-align:justify;
        }

        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <!--Registration Form -->
        <div class="container ctn">
            <h3 class="text-info">IPC Sections/Act related to cyberlaw.</h3>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table" DataSourceID="SqlDataSource2" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Read More"  />
                   
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cyberlaw %>" SelectCommand="SELECT * FROM [section]"></asp:SqlDataSource>


        </div>
        <div class="container card">
            <h3 class="text-center col-form-label-lg" style="color: black;">Security Awareness Documents that will provide you general security fundamentals. </h3>
            <div class="row">

                <div class="col-md-12 col-lg-4">
                    <div class="card">

                        <div class="card-img-top">
                            <asp:Image ID="Image1" runat="server" CssClass="image" ImageUrl="~/img/security/security1.jpg" Height="200px" Width="330px" />
                        </div>
                         <div class="card-body">
                            <h4 class="card-title">Best Antivirus</h4>
                            <p class="card-text">Download this document to know which is the best antivirus for your PC according to PC configuration.</p>
                        </div>

                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="card-footer btn" OnClick="LinkButton1_Click">Download<i class="fa fa-download"></i></asp:LinkButton>

                    </div>
                </div>
                <div class="col-md-12 col-lg-4">
                    <div class="card">

                        <div class="card-img-top">
                            <asp:Image ID="Image2" runat="server" CssClass="image2" ImageUrl="~/img/security/security2.png" Height="200px" Width="330px" />
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Email Security</h4>
                            <p class="card-text">Download this document to know what is Email Security and how to secure Email Application.</p>
                        </div>
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="card-footer btn" OnClick="LinkButton2_Click">Download<i class="fa fa-download"></i></asp:LinkButton>
                    </div>
                </div>
                <div class="col-md-12 col-lg-4">
                    <div class="card">

                        <div class="card-img-top">
                            <asp:Image ID="Image3" runat="server" CssClass="image3" ImageUrl="~/img/security/security3.jpg" Height="200px" Width="330px" />
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Web Security</h4>
                            <p class="card-text">Download this document to know what is web security and how to secure your web surfing.</p>
                        </div>
                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="card-footer btn" OnClick="LinkButton3_Click">Download<i class="fa fa-download"></i></asp:LinkButton>
                    </div>
                </div>

            </div>
        </div>
        <div class="modal fade" id="View1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" runat="server">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="alert alert-success">

                        <strong>Well done!</strong> Successfully Saved     
                    </div>
                </div>
                <!-- modal-content -->
            </div>
            <!-- modal-dialog -->
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Contact form JavaScript -->
        <script src="../js/jqBootstrapValidation.js"></script>
        <script src="../js/contact_me.js"></script>

        <!-- Custom scripts for this template -->
        <script src="../js/agency.min.js"></script>



    </div>
</asp:Content>
