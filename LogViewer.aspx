<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Page language="c#" Inherits="netba.LogViewer" CodeFile="LogViewer.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Log Viewer</title>
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
						<asp:Label id="lblPageTitle" runat="server" CssClass="pagetitle">Log Viewer</asp:Label>
						<HR align="left" width="100%" color="red" SIZE="1">
						<P><FONT face="Arial" size="6">
									<asp:DataGrid id="dgLogEntries" runat="server" CssClass="grid" AllowPaging="True" PageSize="20"
										Font-Size="Small">
										<HeaderStyle CssClass="gridheader"></HeaderStyle>
									</asp:DataGrid></FONT></P>
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer>
		</form>
	</body>
</HTML>
