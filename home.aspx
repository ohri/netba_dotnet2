<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Scoreboard" Src="Scoreboard.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TopPlayersLastNight" Src="TopPlayersLastNight.ascx" %>
<%@ Register TagPrefix="uc1" TagName="alerts" Src="alerts.ascx" %>
<%@ Page language="c#" Inherits="netba.Home" CodeFile="home.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>NetBA Home</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="netba.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<FORM id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellPadding="8" bgColor="white" width="840">
				<TR>
					<TD width="160" rowspan="2">
						<uc1:navbar id="Navbar1" runat="server"></uc1:navbar>
					</TD>
					<TD width="680" height="50" colspan="2">
						<uc1:Scoreboard id="Scoreboard1" runat="server"></uc1:Scoreboard>
					</TD>
				</TR>
				<tr>
					<td width="560">
						<P><FONT size="6">Latest News</FONT></P>
						<P>
							<asp:DataList id="dlNews" runat="server">
								<ItemTemplate>
									<div class="navdivider"></div>
									<strong>
										<%#	DataBinder.Eval(Container.DataItem,	"NewsTitle") %>
									</strong>
									<br>
									<%#	DataBinder.Eval(Container.DataItem,	"NewsText")	%>
									<br>
									<br>
									<font size="2" style="FONT-STYLE: italic">Posted
										<%#	DataBinder.Eval(Container.DataItem,	"WhenSubmitted", "{0:d}") %>
										by
										<%#	DataBinder.Eval(Container.DataItem,	"Submitter") %>
									</font>
									<br>
								</ItemTemplate>
							</asp:DataList></P>
						<div class="navdivider"></div>
						<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="PostNews.aspx" Font-Italic="True" Font-Size="Smaller">Post News</asp:HyperLink>
					</td>
					<td width="225" bordercolor="silver">
						<P>
							<uc1:TopPlayersLastNight id="TopPlayersLastNight1" runat="server"></uc1:TopPlayersLastNight></P>
						<P>
							<uc1:alerts id="Alerts1" runat="server"></uc1:alerts></P>
					</td>
				</tr>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer>
		</FORM>
	</body>
</HTML>
