<%@ Page Language="C#" MasterPageFile="~/Netba.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" Title="Site Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
    System Administration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
						<P>Password Reset</P>
						<asp:DropDownList id="ddlOwners" runat="server"></asp:DropDownList>
						<asp:Button id="ButtonResetPassword" runat="server" Text="Reset" onclick="ButtonResetPassword_Click"></asp:Button><br>
						<asp:Label id="lblMessage" runat="server"></asp:Label>
						<div class="navdivider"></div>
						<P>
							<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="playereditor.aspx">Player Editor</asp:HyperLink></P>
						<div class="navdivider"></div>
						<P>
							<asp:HyperLink id="HyperLink2" runat="server" NavigateUrl="LogViewer.aspx">Log Viewer</asp:HyperLink></P>
						<div class="navdivider"></div>
						<P>
							<asp:HyperLink id="HyperLink3" runat="server" NavigateUrl="Scoring.aspx">Scoring Management</asp:HyperLink></P>
						<DIV class="navdivider"></DIV>
						<P>
							<asp:CheckBox id="cbDraftOpen" runat="server" Text="Draft Open" AutoPostBack="True" TextAlign="Left" oncheckedchanged="cbDraftOpen_CheckedChanged"></asp:CheckBox></P>
						<P>
							<asp:CheckBox id="cbFAOpen" runat="server" Text="Free Agency Open" AutoPostBack="True" TextAlign="Left" ></asp:CheckBox></P>
						<P>
							<DIV class="navdivider"></DIV>
						</P>
						<P>
							<table border="0" cellpadding="5" cellspacing="5">
								<tr>
									<th colspan="2">
										Undo Pick</th></tr>
								<tr>
									<td>Round:</td>
									<td><asp:TextBox id="tbRound" runat="server" Width="32px"></asp:TextBox></td>
								</tr>
								<tr>
									<td>Pick:</td>
									<td><asp:TextBox id="tbPick" runat="server" Width="32px"></asp:TextBox></td>
								</tr>
								<tr>
									<td colspan="2">
										<asp:Button id="btnGo" runat="server" Text="Go" onclick="btnGo_Click"></asp:Button></td>
								</tr>
							</table>
						</P>
						<P>
							<asp:Label id="lblPickMessage" runat="server"></asp:Label></P>

</asp:Content>

