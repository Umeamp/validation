<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    User Name
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Enter UserName" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    <br />
    Password&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Enter Password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    <br />
    Retype Password
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ErrorMessage="Enter Correct Password" ControlToValidate="Textbox3" ControlToCompare="TextBox2"></asp:CompareValidator>
    <br />
    Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Please Enter Correct Mail Id" ValidationExpression=".+@.+" ControlToValidate="TextBox4" ></asp:RegularExpressionValidator>
    <br />
    Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ErrorMessage="Enter Age Between 10 to 100" MinimumValue="10" MaximumValue="100" ControlToValidate="TextBox5"></asp:RangeValidator>
    <br />
    Reference Code&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <asp:CustomValidator ID="CustomValidator1" runat="server" 
        ErrorMessage="Start strin A" ValidateEmptyText="false" ControlToValidate="TextBox6" OnServerValidate="vldconserve"></asp:CustomValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </p>
    </form>
</body>
</html>
