<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sendemail.aspx.cs" Inherits="email.sendemail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            width: 215px;
            height: 170px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td colspan="2">SENDING EMAIL IN C#</td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="lblmailfrom" runat="server" Text="Mail From"></asp:Label></td>
                    <td><asp:TextBox ID="txtmailfrom" runat="server" Text="" Width="216px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="lblmailto" runat="server" Text="Mail To"></asp:Label></td>
                    <td><asp:TextBox ID="txtmailto" runat="server" Text="" Width="216px"></asp:TextBox>
                        <asp:TextBox ID="txtmailto1" runat="server" Text="" Width="216px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mail To CC</td>
                    <td><asp:TextBox ID="txtmailcc" runat="server" Text="" Width="216px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="lblsubject" runat="server" Text="Subject"></asp:Label></td>
                    <td><textarea id="TextArea1" runat="server" class="auto-style2"></textarea> </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnsend" runat="server" Text="Send Mail" OnClick="btnsend_Click" /></td>
                    <td><asp:Button ID="btnrefresh" runat="server" Text="Refresh" OnClick="btnrefresh_Click"/><asp:Label ID="lblmessage" runat="server" Text=""></asp:Label></td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
