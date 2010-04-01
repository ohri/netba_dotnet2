<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Page language="c#" Inherits="netba.PlayerSearch" CodeFile="PlayerSearch.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Player Search</title>
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
					<TD><br>
						<P>&nbsp;</P>
						<P>&nbsp;</P>
						<asp:Label id="lblPageTitle" runat="server" CssClass="pagetitle">Player Search</asp:Label>
						<HR align="left" width="100%" color="red" SIZE="1">
						<P>
							<asp:DataGrid id="dgSearchResults" CssClass="grid" runat="server" AutoGenerateColumns="False">
								<HeaderStyle CssClass="gridheader"></HeaderStyle>
								<Columns>
									<asp:HyperLinkColumn DataNavigateUrlField="PlayerId" 
                                        DataNavigateUrlFormatString="DetailedStats.aspx?PlayerId={0}" 
                                        DataTextField="Player" HeaderText="Player" SortExpression="Player">
                                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                                            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                                    </asp:HyperLinkColumn>
									<asp:BoundColumn DataField="PositionName" HeaderText="Pos">
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
									</asp:BoundColumn>
									<asp:HyperLinkColumn DataNavigateUrlField="RealTeamId" DataNavigateUrlFormatString="RealTeamView.aspx?RealTeamId={0}"
										DataTextField="RealTeam" HeaderText="NBA Team">
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
									</asp:HyperLinkColumn>
									<asp:HyperLinkColumn DataNavigateUrlField="TeamId" DataNavigateUrlFormatString="TeamPage.aspx?TeamId={0}"
										DataTextField="TeamAbbrev" HeaderText="NetBA Team">
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
									</asp:HyperLinkColumn>
									<asp:BoundColumn DataField="TotalGames" SortExpression="Games" HeaderText="Games">
										<ItemStyle HorizontalAlign="Right"></ItemStyle>
									</asp:BoundColumn>
									<asp:BoundColumn DataField="NetPPG" HeaderText="NetPPG" 
                                        DataFormatString="{0:0.0}">
                                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                                            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Right" />
                                    </asp:BoundColumn>
								</Columns>
							</asp:DataGrid></P>
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer>
		</form>
	</body>
</HTML>
