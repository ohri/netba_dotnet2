<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>

<%@ Page Language="c#" Inherits="netba.PlayerEditor" CodeFile="PlayerEditor.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Player Editor</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR" />
    <meta content="C#" name="CODE_LANGUAGE" />
    <meta content="JavaScript" name="vs_defaultClientScript" />
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
    <link href="netba.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <table id="Table1" cellpadding="8">
            <tr>
                <td>
                    <uc1:navbar ID="Navbar1" runat="server"></uc1:navbar>
                </td>
                <td>
                    <br />
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <asp:Label ID="lblPageTitle" runat="server" CssClass="pagetitle">Player Editor</asp:Label>
                    <hr align="left" width="100%" size="1" />
                    <table border="0" cellpadding="15" cellspacing="5">
                        <tr>
                            <td>
                                <asp:Panel ID="pnlPlayerSelection" runat="server">
                                    <asp:DropDownList ID="ddlPositions" runat="server" AutoPostBack="True" Width="128px"
                                        OnSelectedIndexChanged="ddlPositions_SelectedIndexChanged">
                                        <asp:ListItem Value="%G%">Guards</asp:ListItem>
                                        <asp:ListItem Value="%F%">Forwards</asp:ListItem>
                                        <asp:ListItem Value="%C%">Centers</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:ListBox ID="lbPlayers" runat="server" Width="232px" Height="256px"></asp:ListBox>
                                    <br />
                                    <br />
                                    <center>
                                        <asp:Button ID="ButtonEdit" runat="server" Text="Edit" OnClick="ButtonEdit_Click"></asp:Button>&nbsp;
                                        <asp:Button ID="ButtonNew" runat="server" Text="New" OnClick="ButtonNew_Click"></asp:Button></center>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="pnlPlayerFields" runat="server" Height="250px" 
                                    BorderStyle="Inset">
                                    <table cellspacing="5" cellpadding="5" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    First:</td>
                                                <td>
                                                    <asp:TextBox ID="tbFirst" runat="server" Enabled="False"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Last:</td>
                                                <td>
                                                    <asp:TextBox ID="tbLast" runat="server" Enabled="False"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Alias:</td>
                                                <td>
                                                    <asp:TextBox ID="tbAlias" runat="server" Enabled="False"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Team:</td>
                                                <td>
                                                    <asp:DropDownList ID="ddlTeam" runat="server" Enabled="False">
                                                    </asp:DropDownList></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Real Team:</td>
                                                <td>
                                                    <asp:DropDownList ID="ddlRealTeam" runat="server" Enabled="False">
                                                    </asp:DropDownList></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Position:</td>
                                                <td>
                                                    <asp:DropDownList ID="ddlPosition" runat="server" Enabled="False">
                                                    </asp:DropDownList></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    On IR:</td>
                                                <td>
                                                    <asp:CheckBox ID="cbIR" runat="server" Enabled="False"></asp:CheckBox></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="ButtonSave" runat="server" Text="Save" Enabled="False" OnClick="ButtonSave_Click">
                    </asp:Button>&nbsp;
                    <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" Enabled="False" OnClick="ButtonCancel_Click">
                    </asp:Button>
                </td>
            </tr>
        </table>
        <uc1:footer ID="Footer1" runat="server"></uc1:footer>
    </form>
</body>
</html>
