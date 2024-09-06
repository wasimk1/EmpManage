<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmpManage.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Records</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="header-logo">
                header
               <%-- <img src="images/suntech-logo1.jpg" alt="Suntech Business Solutions" />--%>
            </div>

        </div>
        <div class="main-body">
            <div class="main-left">
                hello
               <%-- <img src="images/login-side1.gif" alt="login side image"/>--%>
            </div>
            <div class="main-right">

                 <div class="btndesign1">
                    <asp:Button ID="btnloginfromhome" runat="server" OnClick="btnloginfromhome_Click" Text="Log-In" class="btnstyle" />
                </div>

                <%-- <div class="btndesign2">   
                    <asp:Button ID="btnregfromhome" runat="server" OnClick="btnregfromhome_Click" Text="Register" class="btnstyle" />
                </div>--%>
            </div>
        </div>
        <div class="footer">
            footer section
        </div>
    </form>

</body>
</html>
