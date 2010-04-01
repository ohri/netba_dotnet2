<%@ Control Language="c#" Inherits="netba.TopPlayersLastNight" CodeFile="TopPlayersLastNight.ascx.cs" %>
<LINK href="netba.css" type="text/css" rel="stylesheet">
<asp:Panel id="Panel1" runat="server" BorderStyle="Solid" BorderColor="Silver" BackColor="White">
		<CENTER><STRONG>Top Performances</STRONG></CENTER>
		<CENTER><STRONG>
				<asp:Label id="lblDate" runat="server" CssClass="italicitem" Font-Size="XX-Small"></asp:Label>
		</STRONG></CENTER>
		<asp:DataGrid id="dgTopPerformances" runat="server" CssClass="subtlegrid" AutoGenerateColumns="False"
			ShowHeader="False" GridLines="None">
			<Columns>
				<asp:BoundColumn DataField="TeamAbbrev" HeaderText="Team"></asp:BoundColumn>
				<asp:BoundColumn DataField="Player" HeaderText="Player"></asp:BoundColumn>
				<asp:BoundColumn DataField="TotalPoints" HeaderText="Points"></asp:BoundColumn>
			</Columns>
		</asp:DataGrid>
</asp:Panel>
