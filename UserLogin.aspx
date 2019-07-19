<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="WebApplication1.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(images/bgimage.jpg)">
    <form id="form1" runat="server">
        <div style="position: absolute;left: 50%;top: 50%;transform: translate(-50%, -50%);">
            <div style="display: inline-block">
                <asp:Label ID="loginLabel" runat="server" Text="ToDoList User Login" Font-Names="Garamond" BorderStyle="Dotted" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:Label><br/>
                <br/>
                <br/>
                <asp:Label ID="userNameLabel" runat="server" Text="User Name:&nbsp&nbsp&nbsp" Font-Names="Garamond" Font-Bold="true" Font-Size="Medium" ForeColor="Red">
                </asp:Label><asp:TextBox ID="userNameTextBox" runat="server"></asp:TextBox><br/>
                <br/>
                <asp:Label ID="passwordLabel" runat="server" Text="Password:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" Font-Names="Garamond" Font-Bold="true" Font-Size="Medium" ForeColor="Red">
                </asp:Label><asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox><br />
                <br />
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp               
                <asp:Button ID="loginButton" runat="server" ForeColor="Red" Text="LOGIN" BorderStyle="Solid" OnClick="loginButton_Click" />
            </div>
        </div>

    </form>
</body>
</html>
