<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Cyberlaw.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>admin login</title>
    <link rel="icon" href="img/login.png" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">Log in</h2>

  <div class="login-container">
    <p>
        <asp:TextBox ID="username" runat="server" CssClass="form-control lg" ToolTip="Admin Id"></asp:TextBox>
      </p>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" CssClass="text-danger" ErrorMessage="Admin Id required"></asp:RequiredFieldValidator>
    <p>
        <asp:TextBox ID="password" runat="server" CssClass="form-control lg" TextMode="Password" ToolTip="Enter password"></asp:TextBox></p>
      <p>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" CssClass="text-danger" ErrorMessage="Password required"></asp:RequiredFieldValidator>
      </p>
      <p>
          <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" ToolTip="Sign in As">
              <asp:ListItem>Select</asp:ListItem>
              <asp:ListItem>Admin</asp:ListItem>
              <asp:ListItem>Lawyer</asp:ListItem>
          </asp:DropDownList>
      </p>
      <p>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" CssClass="text-danger" ErrorMessage="Select atleast one"></asp:RequiredFieldValidator>
      </p>
      <p>
          <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot Password </asp:LinkButton>
      </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Login" BorderStyle="None" CssClass="btn-default active" OnClick="Button1_Click" /></p>
    <p>&nbsp;&nbsp <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" TextLayout="TextOnTop" Visible="False" UserNameInstructionText="" UserNameLabelText="Enter email Id:" Width="348px" CssClass="auto-style1">
        <MailDefinition From="noreply@gmail.com" Subject="Forgetton Password" Priority="High">
                </MailDefinition>
                   </asp:PasswordRecovery></p>
   
  </div>
</div>
    </form>
</body>
</html>
