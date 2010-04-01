<%@ Control Language="c#" Inherits="netba.navbar" CodeFile="navbar.ascx.cs" %>
<table cellPadding="0" border="0" cellspacing="0">
	<tr width=160px>
		<td><a href="home.aspx"><img width=160px border="0" src="./images/netba4.jpg"></a></td>
	</tr>
	<tr bgColor="red">
		<td><br/>
			<table border="0" cellpadding="15" cellspacing="0">
				<tr>
					<td width=130>
						<div class="navbar">
							<asp:TextBox id="txtPlayerSearch" runat="server" Width="48px"></asp:TextBox>
							<asp:Button id="ButtonSearch" runat="server" Text="Search" onclick="ButtonSearch_Click"></asp:Button>
							<br />  
							<br />  
							<asp:dropdownlist id="ddlTeams" runat="server" Width="90px" Font-Size="X-Small" AutoPostBack="True" onselectedindexchanged="ddlTeams_SelectedIndexChanged"></asp:dropdownlist>
							<div class="navdivider"></div>
						</div>
						<div class="navbar">
							<a href="transactions.aspx" class="navtext">Transactions</a><br/>
							<a href="lineups.aspx" class="navtext">Submit Lineup</a><br/>
							<a href="TradeList.aspx" class="navtext">
                                <asp:Label ID="lblTrades" runat="server" Text="Trades"></asp:Label></a><br/>
							<a href="Draft.aspx" class="navtext">Draft</a><br/>
							<a href="TeamDraft.aspx" class="navtext">Team Drafts</a><br/>
							<div class="navdivider"></div>
							<a href="Reports.aspx" class="navtext"> Reports</a><br/>
							<a href="powerratings.aspx" class="navtext">Power Ratings</a><br/>
							<a href="schedule.aspx" class="navtext">Schedule</a><br/>
							<a href="Standings.aspx" class="navtext">Standings</a><br/>
							<div class="navdivider"></div>
							<a href="Rules.aspx" class="navtext">Rules</a><br/>
							<a href="http://sports.espn.go.com/nba/players" class="navtext">Position Source</a><br/>
							<div class="navdivider"></div>
							<a href="http://groups.google.com/group/netba" class="navtext">Google Groups</a><br/>
							<a href="ChangePassword.aspx" class="navtext">Change Password</a><br/>
							<a href="admin.aspx" class="navtext">Admin</a><br/>
						</div>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
		</td>
	</tr>
</table>
