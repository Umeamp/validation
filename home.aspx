<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
      <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ad.xml" Width="460" Height="60" />
       
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
    </div>
    
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" >
    </asp:TreeView>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    
    </form>
    </body>
</html>
