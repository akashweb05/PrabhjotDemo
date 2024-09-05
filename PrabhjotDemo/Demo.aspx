<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="PrabhjotDemo.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 653px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:left" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Register User" BackColor="#00CCFF" BorderColor="Black" BorderWidth="2px" Font-Size="30px" ForeColor="Black" Height="43px" Width="195px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
&nbsp;
            <asp:TextBox ID="Txtfname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtfname" ErrorMessage="* Please Enter First Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
&nbsp;
            <asp:TextBox ID="Txtlname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtlname" ErrorMessage="*Please Enter Last Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
            <asp:TextBox ID="Txtgender" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtgender" ErrorMessage="*Please Enter Gender" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtemail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Please Enter Valid Email" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Txtemail"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
&nbsp;
&nbsp;
            <asp:TextBox ID="Txtpass" runat="server" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
&nbsp;
            <asp:TextBox ID="Txtcfpass" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtpass" ControlToValidate="Txtcfpass" ErrorMessage="*Please Check Password" ForeColor="#CC0000"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="BtnRegister" runat="server" Height="49px" OnClick="Button1_Click" Text="Register" Width="149px" BackColor="#00CC66" BorderColor="Black" Font-Bold="True" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="49px" OnClick="Button2_Click" Text="View Data" Width="149px" BackColor="#FFCC99" BorderColor="Black" Font-Bold="True" ForeColor="Black" />
            <br />
            <br />
            <asp:Button ID="btnback" runat="server" BackColor="#FFCCFF" BorderColor="Black" Height="46px" OnClick="btnback_Click" Text="Go Back" Width="157px" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="1074px"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" >
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Update" ShowHeader="True" Text="Update" />
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            <br />

        </div>
    </form>
</body>
</html>
