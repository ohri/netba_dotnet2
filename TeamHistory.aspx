<%@ Page Language="C#" MasterPageFile="~/Netba.master" AutoEventWireup="true" CodeFile="TeamHistory.aspx.cs" Inherits="TeamHistory" Title="Team History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
						<asp:Label id="lblPageTitle" runat="server" CssClass="pagetitle">Team History</asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
						<asp:DataGrid id="dgFranchiseRecord" runat="server" CssClass="grid" AutoGenerateColumns="False">
							<HeaderStyle CssClass="gridheader"></HeaderStyle>
							<Columns>
								<asp:BoundColumn DataField="season" HeaderText="Season"></asp:BoundColumn>
								<asp:BoundColumn DataField="wins" HeaderText="Wins">
									<ItemStyle HorizontalAlign="Right"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="losses" HeaderText="Losses">
									<ItemStyle HorizontalAlign="Right"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="DivisionWinner" HeaderText="Won Division">
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="result" HeaderText="Result"></asp:BoundColumn>
							</Columns>
						</asp:DataGrid>
</asp:Content>

