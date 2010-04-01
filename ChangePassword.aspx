<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Page language="c#" Inherits="netba.ChangePassword" CodeFile="ChangePassword.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Change Password</title>
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
					<TD>
						<P>&nbsp;</P>
						<P><br>
							&nbsp;</P>
						<P>
							<asp:Label id="lblMessage" runat="server"></asp:Label></P>
						<table border="0" cellpadding="5" cellspacing="5">
							<tr>
								<td>Old Password:</td>
								<td><asp:TextBox id="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox></td>
							</tr>
							<tr>
								<td>New Password:</td>
								<td><asp:TextBox id="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox></td>
							</tr>
							<tr>
								<td>Repeat New Password:</td>
								<td><asp:TextBox id="txtConfirmNewPass" runat="server" TextMode="Password"></asp:TextBox></td>
							</tr>
							<tr>
								<td colspan="2" align="right"><asp:Button id="btnChangePassword" runat="server" Text="Change Password" onclick="btnChangePassword_Click"></asp:Button></td>
							</tr>
						</table>
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer>
		</form>
	</body>
</HTML>
