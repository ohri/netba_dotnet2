<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Page language="c#" Inherits="netba.SelectPlayers" CodeFile="SelectPlayers.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<title>Select Players</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
		<meta name="CODE_LANGUAGE" content="C#" />
		<meta name="vs_defaultClientScript" content="JavaScript" />
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
		<link href="netba.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<table id="Table1" cellpadding="8">
				<tr>
					<td>
						<uc1:navbar id="Navbar1" runat="server"></uc1:navbar>
					</td>
					<td><br>
						<P>&nbsp;</P>
						<P>&nbsp;</P>
						<asp:Label id="lblPageTitle" runat="server" CssClass="pagetitle">Select Players</asp:Label>
						<HR align="left" width="100%" color="red" SIZE="1">
						<FONT face="Arial" size="6">
								<table border="0">
									<tr>
										<td style="WIDTH: 120px">
											<asp:RadioButtonList id="rblPositions" runat="server" AutoPostBack="True" onselectedindexchanged="rblPositions_SelectedIndexChanged">
												<asp:ListItem Value="%G%" Selected="True">Guards</asp:ListItem>
												<asp:ListItem Value="%F%">Forwards</asp:ListItem>
												<asp:ListItem Value="%C%">Centers</asp:ListItem>
											</asp:RadioButtonList>
										</td>
										<td>
											<asp:ListBox id="lbPlayers" runat="server" Width="224px" Height="176px" SelectionMode="Multiple"></asp:ListBox>
										</td>
									</tr>
								</table>
								<center><asp:Button id="btnSelect" runat="server" Text="Select" onclick="btnSelect_Click"></asp:Button></center>
								<br />
							</FONT>
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer>
		</form>
	</body>
</HTML>
