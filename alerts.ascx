<%@ Control Language="c#" Inherits="netba.alerts" CodeFile="alerts.ascx.cs" %>
<LINK href="netba.css" type="text/css" rel="stylesheet">
<asp:Panel id="Panel1" BackColor="White" BorderColor="Silver" BorderStyle="Solid" runat="server">
		<CENTER><STRONG>Alerts</STRONG></CENTER>
        <asp:DataList ID="dlAlerts" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="1"
            ShowFooter="False" ShowHeader="False" CssClass="subtlegrid">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <ItemStyle BackColor="White" ForeColor="Red" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>'></asp:Label><br />
            </ItemTemplate>
        </asp:DataList></asp:Panel>
