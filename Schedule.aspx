<%@ Page Language="C#" MasterPageFile="~/Netba.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Schedule" Title="Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
Schedule
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
						<P>
							<asp:DropDownList id="ddlSeasons" runat="server"></asp:DropDownList>
							<asp:Button id="btnGo" runat="server" Text="Go" onclick="btnGo_Click"></asp:Button></P>
						<asp:DataGrid id="dgSchedules" runat="server" CssClass="grid" AutoGenerateColumns="False">
							<HeaderStyle CssClass="gridheader"></HeaderStyle>
							<Columns>
								<asp:BoundColumn DataField="Week" HeaderText="Week"></asp:BoundColumn>
								<asp:BoundColumn DataField="HomeTeam" HeaderText="Home"></asp:BoundColumn>
								<asp:BoundColumn DataField="VisitingTeam" HeaderText="Away"></asp:BoundColumn>
								<asp:BoundColumn DataField="NumGames" HeaderText="Games"></asp:BoundColumn>
								<asp:HyperLinkColumn DataNavigateUrlField="GameId" DataNavigateUrlFormatString="boxscore.aspx?GameId={0}"
									DataTextField="GameResult" HeaderText="Result"></asp:HyperLinkColumn>
							</Columns>
						</asp:DataGrid>
						</asp:Content>

