<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Page language="c#" Inherits="netba.Scoring" CodeFile="Scoring.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Scoring</title>
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
						<P>
							<asp:Label id="lblPageTitle" runat="server" CssClass="pagetitle">Scoring Management</asp:Label>
						</P>
							<HR align="left" width="100%" color="red" SIZE="1">
						<P></P>
						<P>Please don&#39;t touch this page unless you know exactly what you&#39;re doing.</P>
                        <P>Week:
							<asp:DropDownList id="ddlWeeks" runat="server"></asp:DropDownList>&nbsp;
							<asp:Button ID="btnAutosub" runat="server" onclick="btnAutosub_Click" OnClientClick="return confirm('Are you sure you want to autosub?');" 
                                Text="Autosub" />
                        &nbsp;
							<asp:Button id="ButtonFinalize" runat="server" Text="Finalize Scores" onclick="ButtonFinalize_Click"
							OnClientClick="return confirm('Are you sure you want to finalize?');" ></asp:Button></P>
						<DIV class="navdivider"></DIV>
						<asp:Calendar id="calStatDate" runat="server"></asp:Calendar>
						<P>
							<asp:Button id="ButtonProcessDaily" runat="server" Text="Get Stats" onclick="ButtonProcessDaily_Click"></asp:Button></P>
						<P>
							<asp:TextBox id="tbScrapeResults" runat="server" ReadOnly="True" Width="272px" Height="239px"
								TextMode="MultiLine"></asp:TextBox></P>
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer>
		</form>
	</body>
</HTML>
