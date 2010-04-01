<%@ Page language="c#" Inherits="netba.SelectPlayer" CodeFile="SelectPlayer.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>SelectPlayer</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="netba.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<FORM id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellPadding="8">
				<TR>
					<TD>
						<uc1:navbar id="Navbar1" runat="server"></uc1:navbar></TD>
					<TD><BR>
						<P>&nbsp;</P>
						<P>&nbsp;</P>
						<P>
							<asp:Label id="lblPageTitle" runat="server" CssClass="pagetitle">Select Player</asp:Label></P>
							<HR align="left" width="100%" color="red" SIZE="1">
						<P></P>
						<P>
							<asp:Panel id="pnlSelection" runat="server" Height="98px">
								<TABLE id="Table2" cellSpacing="5" cellPadding="5" border="0">
									<TR>
										<TD>
											<asp:RadioButtonList id="rblPositions" runat="server" AutoPostBack="True" onselectedindexchanged="rblPositions_SelectedIndexChanged">
												<asp:ListItem Value="%G%" Selected="True">Guards</asp:ListItem>
												<asp:ListItem Value="%F%">Forwards</asp:ListItem>
												<asp:ListItem Value="%C%">Centers</asp:ListItem>
											</asp:RadioButtonList></TD>
										<TD>
											<asp:ListBox id="lbPlayers" runat="server" Width="248px" Height="160px"></asp:ListBox></TD>
									</TR>
									<TR>
										<TD vAlign="top" align="right" colSpan="2">
											<asp:Button id="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click"></asp:Button>
											<P></P>
										</TD>
									</TR>
								</TABLE>
							</asp:Panel>
						</P>
						<asp:Panel id="pnlConfirmation" runat="server" Height="44px" Visible="False">
							<P>&nbsp;</P>
							<P>
								<asp:Label id="lblPickInfo" runat="server">Label</asp:Label></P>
							<P>Press Ok to confirm your selection.</P>
							<P>Enter a comment if you like (shows up in the notification email):</P>
							<P>
								<asp:TextBox id="tbComments" runat="server" Width="416px" Height="46px"></asp:TextBox></P>
							<P>
								<asp:Button id="btnOk" runat="server" Text="Ok" onclick="btnOk_Click"></asp:Button>&nbsp;
								<asp:Button id="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"></asp:Button></P>
						</asp:Panel>
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer></FORM>
	</body>
</HTML>
