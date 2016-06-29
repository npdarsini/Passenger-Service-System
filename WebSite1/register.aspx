<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="_def" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            height: 36px;
        }
        .style2
        {
            font-size: larger;
            font-family: "Comic Sans MS";
        }
        .style3
        {
            color: #FF00FF;
        }
    </style>
    
</head>
<body background="1111111111/Untitled.jpg" >
    <form id="form1" runat="server">
    <div>
        <h1 align="center" class="style1">
            &nbsp;<span class="style2">Journey Reservation</span></h1>
        <p class="red">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                class="style3">
            <asp:Button ID="logout" runat="server" BackColor="#CCCCFF" 
                BorderColor="#3399FF" BorderStyle="Double" Height="24px" Text="logout" 
                Width="92px" />
            &nbsp;</span></p>
        <p class="style3">
            &nbsp;</p>
        <p class="red">
            <span class="style3">&nbsp;temp i</span><font color="#CC0099" face="verdana" size="-1">d<span lang="en-us">:</span>
            </font>&nbsp;<asp:TextBox ID="txt_cid" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Check Availability" />
        </p>
        <p class="red">
            &nbsp;<font color="#CC0099" face="verdana" size="-1">Password<span lang="en-us">:</span>
            </font>&nbsp;
            <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <font color="#CC0099" face="verdana" size="-1">&nbsp;<span lang="en-us">First name:
            </span>&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </font>
        </p>
        <p>
            <font color="#CC0099" face="verdana" size="-1">&nbsp;<span lang="en-us">Last</span>
            <span lang="en-us">name:&nbsp; </span>&nbsp;<asp:TextBox ID="TextBox2" 
                runat="server"></asp:TextBox>
            </font>
        </p>
        <p>
            &nbsp;<font color="#CC0099" face="verdana" size="-1">Gender<span lang="en-us">:</span>
            </font>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;<font color="#CC0099" face="verdana" size="-1">Journey date<span lang="en-us">:</span>
            </font>&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/1111111111/cal.gif" 
                style="width: 16px; " />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                ShowGridLines="True" Width="220px">
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                    ForeColor="#FFFFCC" />
            </asp:Calendar>
            <asp:Label ID="lbl_msg" runat="server" Text="Label"></asp:Label>
            <br />
        </p>
        <p>
            &nbsp;<font color="#CC0099" face="verdana" size="-1">Flight No<span lang="en-us">:</span>&nbsp;
            </font>&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="flightno" 
                DataValueField="flightno">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [flightno] FROM [flightno]">
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;<font color="#CC0099" face="verdana" size="-1">Email<span lang="en-us">:</span>
            </font>&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;<font color="#CC0099" face="verdana" size="-1"> Phone No<span lang="en-us">:</span>
            </font>&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;<font color="#CC0099" face="verdana" size="-1">Airport<span lang="en-us">:</span></font>&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="airport" DataValueField="airport">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [airport] FROM [airport]">
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;<font color="#CC0099" face="verdana" size="-1">No.of Persons<span lang="en-us">:</span></font>&nbsp;<asp:TextBox 
                ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" 
                runat="server" Text="Submit" />
        </p>
    </div>
    </form>
</body>
</html>
