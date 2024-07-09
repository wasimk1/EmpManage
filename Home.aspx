<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmpManage.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Records</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="header-logo">
                <img src="images/suntech-logo.jpg" alt="Suntech Business Solutions" />
            </div>

        </div>
        <div class="main-body">
            <div class="main-left">
                <img src="images/login-side.gif" alt="login side image"/>
            </div>
            <div class="main-right">


                <div class="btndesign1">
                    <asp:Button ID="btnloginfromhome" runat="server" OnClick="btnloginfromhome_Click" Text="Log-In" class="btnstyle" />
                </div>
                <div class="btndesign2">
                    <asp:Button ID="btnregfromhome" runat="server" OnClick="btnregfromhome_Click" Text="Register" class="btnstyle" />
                </div>



            </div>
        </div>
        <div class="footer">
            footer section
        </div>
    </form>

</body>
</html>
