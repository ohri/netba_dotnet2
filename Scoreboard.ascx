<%@ Control Language="c#" Inherits="netba.Scoreboard" CodeFile="Scoreboard.ascx.cs" %>
<LINK href="netba.css" type="text/css" rel="stylesheet">
<asp:Repeater id="dlGames" runat="server">
	<ItemTemplate>
		<div class="sbBox">
			<div class="sbGame" onmouseover="this.style.cursor='hand';this.style.cursor='pointer';"
				onmouseout="this.style.cursor='';" onclick="document.location.href='boxscore.aspx?gameId=<%# DataBinder.Eval(Container.DataItem, "GameId") %>';">
				<div class="regNameAway"><%# DataBinder.Eval(Container.DataItem, "AwayTeam") %></div>
				<div class="regNameHome"><%# DataBinder.Eval(Container.DataItem, "HomeTeam") %></div>
				<div class="regScoreAway"><%# DataBinder.Eval(Container.DataItem, "AwayScore") %></div>
				<div class="regScoreHome"><%# DataBinder.Eval(Container.DataItem, "HomeScore") %></div>
			</div>
		</div>
	</ItemTemplate>
</asp:Repeater>
