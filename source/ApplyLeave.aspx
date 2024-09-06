<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="ApplyLeave.aspx.cs" Inherits="EmpManage.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <hr />


        <div class="applylv-main">


            <div class="applylv-top-header">
                <p>Apply Leave</p>

            </div>
            <br />
            <br />


            <div class="applylv-bottom-details">
                <form>
                    <table border="1px" style="width: 146px">
                        <tr>
                            <td colspan="2" style="width: 114px">Leave Type</td>
                            <td colspan="2">
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="149px">
                                    <asp:ListItem Selected="True">Sick Leave</asp:ListItem>
                                    <asp:ListItem>Casual Leave</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                        </tr>
                        <tr>
                            <td>From Date</td>
                            <td>
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar>
                            </td>
                            <td>To Date</td>
                            <td>
                                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">Shift Type</td>
                            <td colspan="2">
                                <asp:DropDownList ID="drplvShiftType" runat="server" Height="35px" Width="148px">
                                    <asp:ListItem Selected="True">Full Day</asp:ListItem>
                                    <asp:ListItem>First Half</asp:ListItem>
                                    <asp:ListItem>Second Half</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblTotaldaysorhrs" runat="server" Text="Total Days"></asp:Label></td>
                            <td colspan="2">
                                <asp:TextBox ID="txtTotDaysorHrs" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbllvCom" runat="server" Text="Leave Comment"></asp:Label></td>
                            <td colspan="2">
                                <textarea id="txtLvComment" cols="20" rows="2"></textarea>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="4" align="center">
                                <asp:Button ID="btnlvSubmit" runat="server" Text="Apply Leave" />
                            </td>
                          
                        </tr>

                    </table>
                </form>
            </div>




        </div>

    </body>
</asp:Content>
