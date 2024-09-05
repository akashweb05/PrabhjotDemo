<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PrabhjotDemo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 816px">
    <form id="form1" runat="server">
        <div style="text-align:center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="User  Login" BackColor="#339966" BorderColor="Black" BorderWidth="3px" Font-Size="35px" Height="49px" Width="217px" ForeColor="White"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BorderWidth="1px" Height="40px" Width="272px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderWidth="1px" Height="40px" Width="272px"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnLogin" runat="server" BackColor="#0033CC" BorderColor="Black" Font-Bold="True" Font-Size="30px" ForeColor="White" Height="56px" Text="Login" Width="151px" BorderWidth="2px" OnClick="BtnLogin_Click" />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnBack" runat="server" BackColor="#006666" BorderColor="Black" Font-Bold="True" Font-Size="30px" ForeColor="White" Height="56px" Text="Go Back" Width="151px" BorderWidth="2px" OnClick="BtnBack_Click" />
            <br />
        </div>
    </form>
</body>
</html>
