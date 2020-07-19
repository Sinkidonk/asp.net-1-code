<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CalculatorDemo.aspx.vb" Inherits="Demos_CalculatorDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 35%;
        }
        .auto-style2 {
            width: 671px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="ResultLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="ValueBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="OperatorList" runat="server">
                            <asp:ListItem>+</asp:ListItem>
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>*</asp:ListItem>
                            <asp:ListItem>/</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="ValueBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="CalculateButton" runat="server" Text="Calculate" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
