<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Cyberlaw.login" Async ="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login/Register</title>
    <link rel="icon" type="image/png" href="img/login.png" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="google-signin-client_id" content="253576513358-6m59trbscs8jcr33srctot6s3ljdh02v.apps.googleusercontent.com"/>
  
   

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css" />

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css" />


    <style type="text/css">
        .auto-style1 {
            position: relative;
            margin-bottom: 25px;
            overflow: hidden;
            left: 0px;
            top: -3px;
        }

        .auto-style2 {
            display: inline-block;
            background: #6dabe4;
            color: #fff;
            padding: 15px 39px;
            border-radius: 5px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            margin-top: 25px;
            cursor: pointer;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
        }

        .auto-style3 {
            display: inline-block;
            background: #6dabe4;
            color: #fff;
            width: 143px;
            padding: 15px 39px;
            border-radius: 5px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            margin-top: 25px;
            cursor: pointer;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
        }
    </style>

   
</head>
<body>

    <form id="form1" runat="server">
        <div class="main">

             <!-- Sing in  Form -->
            <section class="sign-in">
                <div class="container">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure>
                                <img src="img/signin-image.jpg" alt="sing up image" />
                            </figure>
                            <a href="#signup" class="signup-image-link">Create an account</a>
                        </div>

                        <div class="signin-form" id="login">
                            <h2 class="form-title">Login</h2>

                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="usrname" runat="server" CssClass="form-control input-lg"
                                    Width="250px" TabIndex="1" Style="margin-left: 15px"></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="usrname" ErrorMessage="Username Required" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="upass" runat="server" CssClass="form-control input-lg"
                                    Width="250px" TabIndex="1" Style="margin-left: 15px" TextMode="Password" data-toggle="password"></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="upass" ErrorMessage="Password Required" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="auto-style1">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="Button2" runat="server" CssClass="auto-style2" OnClick="Button2_Click" Text="Login" Width="162px" />
                                &nbsp;
                            </div>

                            <div class="social-login">
                                <span class="social-label">Or login with</span>
                                <ul class="socials">
                                    <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                    <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                    <li><a><i class="zmdi zmdi-google" data-annotation="inline" data-width="300" data-size="small" ></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <!-- Sign up form -->
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form" id="signup">
                            <h2 class="form-title">Sign up</h2>

                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="uname" runat="server" CssClass="form-control input-lg"
                                    Width="250px" TabIndex="1" Style="margin-left: 15px"></asp:TextBox>
                                &nbsp;
                                </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox ID="email" runat="server" CssClass="form-control input-lg"
                                    Width="250px" TabIndex="1" Style="margin-left: 15px"></asp:TextBox>
                                &nbsp;
                                </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="pass" runat="server" CssClass="form-control input-lg"
                                    Width="250px" TabIndex="1" Style="margin-left: 15px" TextMode="Password"></asp:TextBox>
                                &nbsp;
                                </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <asp:TextBox ID="repass" runat="server" CssClass="form-control input-lg"
                                    Width="250px" TabIndex="1" Style="margin-left: 15px" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="repass" CssClass="text-warning" ErrorMessage="Password not matched" Font-Size="Large" ForeColor="#CC0000"></asp:CompareValidator>
                                &nbsp;
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Register" Width="148px" />
                                &nbsp;<a href="Homepage.aspx"><input type="button" class="auto-style3" value="Home" /></a>
                            </div>

                        </div>
                        <div class="signup-image">
                            <figure>
                                <img src="img/signup-image.jpg" alt="sing up image" />
                            </figure>
                            <a href="#login" class="signup-image-link">I am already member</a>
                        </div>
                    </div>
                </div>
            </section>

           

        </div>

        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>
    </form>
    
</body>
</html>
