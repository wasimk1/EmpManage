<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegPage.aspx.cs" Inherits="EmpManage.RegPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SBS Mumbai | Leave Manage | Reg Page</title>
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
                    <td colspan="2" align="center">Employee Registration</td>
                </tr>

                <tr>
                    <td align="left">
                        <asp:Label ID="Label1" runat="server" Text="Enter Username"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtreguser" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                        <asp:Label ID="Label2" runat="server" Text="Enter Total Allocated Casual Leave"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtregcllv" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                        <asp:Label ID="Label3" runat="server" Text="Enter Total Allocated Sick Leave"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtlvsl" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                        <asp:Label ID="Label4" runat="server" Text="Enter Total Allocated WFH"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlvwfh" runat="server"></asp:TextBox></td>
                </tr>

                <tr>

                    <td colspan="2" align="center">
                        <asp:Button ID="btnreg" runat="server" Text="Register" OnClick="btnreg_Click" />
                    </td>
               
                    </tr>

            </table>
            <br />
            <p>
                <asp:LinkButton ID="linkbtnlogin" runat="server" Text="Already have an Account? Back to login" OnClick="linkbtnlogin_Click"></asp:LinkButton>
            </p>
        </form>
    </div>

</body>
</html>
