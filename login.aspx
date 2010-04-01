<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Page language="c#" Inherits="netba.login" CodeFile="login.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Login</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="netba.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellPadding="8">
				<TR vAlign="top">
					<TD rowSpan="2">
					</TD>
					<TD>
					</TD>
				</TR>
				<TR vAlign="top">
					<TD valign="top">
						<P>Please log in:</P>
						<P>
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></P>
						<table border="0" cellpadding="5" cellspacing="5">
							<tr>
								<td><P>Username:</P>
								</td>
								<td>
									<asp:TextBox id="TextUsername" runat="server"></asp:TextBox></td>
							</tr>
							<tr>
								<td><P>Password:</P>
								</td>
								<td>
									<asp:TextBox id="TextPassword" runat="server" TextMode="Password"></asp:TextBox></td>
							</tr>
						</table>
						<asp:Button id="ButtonLogin" runat="server" Text="Go"></asp:Button>
					</TD>
				</TR>
				<TR vAlign="top">
					<TD colSpan="2">
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer>
		</form>
	</body>
</HTML>
