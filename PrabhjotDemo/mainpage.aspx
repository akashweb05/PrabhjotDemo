<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="PrabhjotDemo.mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
            <br />
            <asp:Label ID="Label1" runat="server" Text="User Data" BackColor="Black" BorderWidth="3px" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="30px" ForeColor="White" Height="37px" Width="232px" BorderColor="#999966" ></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Btnregister" runat="server" BackColor="#0099FF" BorderColor="Black" BorderWidth="3px" ForeColor="White" Height="60px" OnClick="Btnregister_Click" Text="Register User" Width="198px" Font-Bold="True" Font-Italic="False" Font-Names="Bell MT" Font-Size="25px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Btnlogin" runat="server" BackColor="#336600" BorderColor="Black" BorderWidth="3px" ForeColor="White" Height="60px" Text="Login User" Width="198px" Font-Bold="True" Font-Italic="False" Font-Names="Bell MT" Font-Size="25px" OnClick="Btnlogin_Click" />
        </div>
    </form>
</body>
</html>
