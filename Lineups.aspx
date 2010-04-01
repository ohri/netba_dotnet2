<%@ Page language="c#" Inherits="netba.Lineups" CodeFile="Lineups.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Lineup Submission</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="netba.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<script language="javascript" type="text/javascript" src="JavaScript/mySubmit.js"></script>
		<script language="javascript" type="text/javascript" src="JavaScript/SelectSwapMove.js"></script>
		<script language="JavaScript" type="text/javascript">
		    function assignPlayer( thiscontrol, hiddenforthis )
		    {
			    if( document.Form1.lbRoster.selectedIndex != -1 )
			    {
				    thiscontrol.innerHTML = document.Form1.lbRoster.options[document.Form1.lbRoster.selectedIndex].text;
				    hiddenforthis.value = document.Form1.lbRoster.options[document.Form1.lbRoster.selectedIndex].value;
			    }
			}
		</script>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellPadding="8">
				<TR>
					<TD><uc1:navbar id="Navbar1" runat="server"></uc1:navbar></TD>
					<TD><br>
						<P>&nbsp;</P>
						<P>&nbsp;</P>
						<asp:label id="lblPageTitle" runat="server" CssClass="pagetitle">Lineup Submission</asp:label>
							<HR align="left" width="100%" color="red" SIZE="1">
						<P></P>
						<div><asp:panel id="PlayerSelection" runat="server" Visible="False" BorderStyle="None" Height="396px">
								<P>
									<asp:Label id="Label1" runat="server" Height="40px" Width="672px">Instructions: Select a player from the Roster listbox on the left and click on the desired place on the depth chart on the right. Note: the tool will not stop you from putting in a bogus lineup!</asp:Label></P>
								<P>
									<asp:Label id="lblGameHeader" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label></P>
								<div>
									<TABLE id="Table2" cellPadding="10" border="0">
										<TR>
											<TD>
												<P><STRONG><U>Roster</U></STRONG></P>
												<P>
													<asp:listbox id="lbRoster" runat="server" SelectionMode="Multiple" Rows="12"></asp:listbox></P>
											</TD>
											<TD>
												<P><STRONG><U>Starters</U></STRONG></P>
												<STRONG>PG:</STRONG>
												<asp:Label id="lblPG" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label><BR>
												<BR>
												<STRONG>SG</STRONG>:
												<asp:Label id="lblSG" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label><BR>
												<BR>
												<STRONG>SF</STRONG>:
												<asp:Label id="lblSF" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label><BR>
												<BR>
												<STRONG>PF</STRONG>:
												<asp:Label id="lblPF" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label><BR>
												<BR>
												<STRONG>C&nbsp; </STRONG>:
												<asp:Label id="lblC" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label></TD>
											<TD>
												<P><STRONG><U>Backups</U></STRONG></P>
												<STRONG>PG</STRONG>:
												<asp:Label id="lblBackupPG" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label><BR>
												<BR>
												<STRONG>SG</STRONG>:
												<asp:Label id="lblBackupSG" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label><BR>
												<BR>
												<STRONG>SF</STRONG>:
												<asp:Label id="lblBackupSF" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label><BR>
												<BR>
												<STRONG>PF</STRONG>:
												<asp:Label id="lblBackupPF" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label><BR>
												<BR>
												<STRONG>C&nbsp;</STRONG>&nbsp;:
												<asp:Label id="lblBackupC" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label></TD>
											<TD>
												<P><STRONG><U>Garbage</U></STRONG></P>
												<STRONG>1</STRONG>:
												<asp:Label id="lblGarbage1" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label><BR>
												<BR>
												<STRONG>2</STRONG>:
												<asp:Label id="lblGarbage2" runat="server" CssClass="handcursor" BorderStyle="Solid" Width="160px"
													Font-Size="X-Small" BorderColor="Silver" BackColor="#E0E0E0" BorderWidth="1px">Pick 'n Click</asp:Label></TD>
										</TR>
									</TABLE>
								</div>
								<CENTER><FONT size="3"><STRONG><U>Comments</U></STRONG></FONT></CENTER>
								<CENTER><FONT size="2">&nbsp;(will show up in email):</FONT></CENTER>
								<BR>
								<CENTER>
									<asp:TextBox id="tbComment" runat="server" Height="66px" Width="360px"></asp:TextBox></CENTER>
								<BR>
								<CENTER>
									<asp:Button id="ButtonSubmitLineup" runat="server" Text="Submit" onclick="ButtonSubmitLineup_Click"></asp:Button>
									<asp:Literal id="litHiddenPlaceholder" runat="server"></asp:Literal></CENTER>
							</asp:panel><br>
							<asp:panel id="TeamWeekSelection" runat="server" BorderStyle="None">
								<TABLE cellSpacing="20" border="0">
									<TR>
										<TH>
											Select team:</TH>
										<TH>
											Select week:</TH></TR>
									<TR>
										<TD>
											<asp:ListBox id="lbTeams" runat="server" Rows="16"></asp:ListBox></TD>
										<TD>
											<asp:ListBox id="lbWeeks" runat="server" Rows="19"></asp:ListBox></TD>
									</TR>
								</TABLE>
								<CENTER>
									<asp:Button id="ButtonSubmitTeamWeek" runat="server" Text="Submit" onclick="ButtonSubmitTeamWeek_Click"></asp:Button></CENTER>
							</asp:panel></div>
						<P></P>
						<P></P>
						<P></P>
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer></form>
	</body>
</HTML>
