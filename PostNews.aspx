<%@ Page language="c#" ValidateRequest="false" Inherits="netba.PostNews" CodeFile="PostNews.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="footer" Src="footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="navbar" Src="navbar.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Post News</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="netba.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<FORM id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellPadding="8">
				<TR>
					<TD><uc1:navbar id="Navbar1" runat="server"></uc1:navbar></TD>
					<TD><BR>
						<P>&nbsp;</P>
						<P>&nbsp;</P>
						<asp:label id="lblPageTitle" runat="server" CssClass="pagetitle">Post News</asp:label>
						<HR align="left" width="100%" color="red" SIZE="1">
						<P><EM><FONT size="2">Note: you can embed HTML tags in your message if you like.</FONT></EM></P>
						<P><asp:table id="Table2" runat="server">
								<asp:TableRow>
									<asp:TableCell>Title</asp:TableCell>
									<asp:TableCell>
										<asp:TextBox id="txtTitle" Columns="72" runat="server"></asp:TextBox>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell>Message</asp:TableCell>
									<asp:TableCell>
										<asp:TextBox id="txtMessage" runat="server" Rows="8" Columns="56" TextMode="MultiLine"></asp:TextBox>
									</asp:TableCell>
								</asp:TableRow>
							</asp:table><asp:button id="ButtonSubmit" runat="server" Text="Submit" onclick="ButtonSubmit_Click"></asp:button></P>
					</TD>
				</TR>
			</TABLE>
			<uc1:footer id="Footer1" runat="server"></uc1:footer></FORM>
	</body>
</HTML>
