<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="EmpManage.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBS Mumbai | Leave Manage</title>
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

        </form>
        <br />
        
 <p>
     <asp:Label ID="Label3" runat="server" Text="Forgot Password?"></asp:Label></p><br />
 <p>
     <asp:Label ID="Label4" runat="server" Text="Don't have an Account ? Create new one"></asp:Label></p>

    </div>

</body>
</html>
