<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hw.aspx.cs" Inherits="hw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            height: 208px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
        <br />
        <br />
    
    </div>
    <asp:Label ID="Label2" runat="server" Text="Class"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" />
&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Update" onclick="Button2_Click" />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click" />
&nbsp;
    <asp:Button ID="Button4" runat="server" Text="Search" />
    &nbsp;
    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Show" />
    </form>
</body>
</html>
