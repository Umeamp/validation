<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sw.aspx.cs" Inherits="sw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
    
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
    </div>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Button" />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Button" />
    </form>
</body>
</html>
