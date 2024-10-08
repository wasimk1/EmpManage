﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="EmpManage.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBS Mumbai | Leave Manage | Login Page</title>
    <link rel="stylesheet" href="css/loginstyle.css" />
</head>
<body>
    <div class="login-main">
        <h3><b>SUNTECH BUSINESS SOLUTIONS</b></h3>
        <br />
        <br />
        <form id="form1" runat="server">
            <table>

                <tr>
                    <td colspan="2" align="center">Employee Login</td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                    </td>
                </tr>


                <tr>

                    <td colspan="2" align="center">

                        <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Log-in" />
                    </td>
                </tr>
            </table>

            <br />

            <p>
                <asp:LinkButton ID="linkbtnforgetpass" runat="server">Forgot Password?</asp:LinkButton>
            </p>
            <br />
            <p>
                <asp:LinkButton ID="linkbtncreateuser" runat="server" OnClick="linkbtncreateuser_Click">Don&#39;t have an Account ? Create new one</asp:LinkButton>
            </p>

        </form>

    </div>

</body>
</html>
