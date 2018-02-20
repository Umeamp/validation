<%@ Page Language="C#" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2 style="color:Green">AdRotator in ASP.NET 4, C#</h2>
    
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
<asp:Timer ID="Timer1" Interval="2000" runat="server" />
 
    <asp:UpdatePanel ID="up1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
        <ContentTemplate>
            <asp:AdRotator ID="AdRotator1" 
runat="server" 
Width="468px" 
Height="60px" 
AdvertisementFile="~/ad.xml"  Target="_self" KeywordFilter="s"/>
</ContentTemplate>
    </asp:UpdatePanel>   

    </div>
    </form>
</body>
</html>
