<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Scoreboard" Src="Scoreboard.ascx" %>
<%@ Page language="c#" Inherits="netba.BoxScore" CodeFile="BoxScore.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Box Score</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="netba.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellPadding="8">
				<TR>
					<TD>
						<uc1:navbar id="Navbar1" runat="server"></uc1:navbar>
					</TD>
					<TD><uc1:Scoreboard id="Scoreboard1" runat="server"></uc1:Scoreboard>
						<br>
						<br>
						<br>
						<asp:Label id="lblPageTitle" runat="server" CssClass="pagetitle">Box Score</asp:Label>
						<HR align="left" width="100%" color="red" SIZE="1">
						<br>
						<br>
						<asp:Label id="lblGameScore" runat="server"></asp:Label>
						<br>
						<br>
						<table border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td style="height: 21px"><center>
										<asp:Label id="lblAway" runat="server" Font-Bold="True" Font-Size="Larger">Label</asp:Label></center>
								</td>
								<td style="height: 21px"><center>
										<asp:Label id="lblHome" runat="server" Font-Bold="True" Font-Size="Larger">Label</asp:Label></center>
								</td>
							</tr>
							<tr>
								<td>
									<asp:DataGrid id="dgAway" runat="server" CssClass="grid" AutoGenerateColumns="False" Width="300px">
										<HeaderStyle CssClass="gridheader"></HeaderStyle>
										<Columns>
											<asp:BoundColumn DataField="Status"></asp:BoundColumn>
											<asp:HyperLinkColumn DataNavigateUrlField="PlayerId" DataNavigateUrlFormatString="DetailedStats.aspx?PlayerId={0}"
												DataTextField="Player" HeaderText="Player"></asp:HyperLinkColumn>
											<asp:BoundColumn DataField="Offense" HeaderText="O">
												<ItemStyle HorizontalAlign="Right"></ItemStyle>
											</asp:BoundColumn>
											<asp:BoundColumn DataField="Defense" HeaderText="D">
												<ItemStyle HorizontalAlign="Right"></ItemStyle>
											</asp:BoundColumn>
										</Columns>
									</asp:DataGrid>
								</td>
								<td>
									<asp:DataGrid id="dgHome" runat="server" CssClass="grid" AutoGenerateColumns="False" Width="300px">
										<HeaderStyle CssClass="gridheader"></HeaderStyle>
										<Columns>
											<asp:BoundColumn DataField="Status"></asp:BoundColumn>
											<asp:HyperLinkColumn DataNavigateUrlField="PlayerId" DataNavigateUrlFormatString="DetailedStats.aspx?PlayerId={0}"
												DataTextField="Player" HeaderText="Player"></asp:HyperLinkColumn>
											<asp:BoundColumn DataField="Offense" HeaderText="O">
												<ItemStyle HorizontalAlign="Right"></ItemStyle>
											</asp:BoundColumn>
											<asp:BoundColumn DataField="Defense" HeaderText="D">
												<ItemStyle HorizontalAlign="Right"></ItemStyle>
											</asp:BoundColumn>
										</Columns>
									</asp:DataGrid>
								</td>
							</tr>
						</table>
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer>
		</form>
	</body>
</HTML>
