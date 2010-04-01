<%@ Page Language="C#" MasterPageFile="~/Netba.master" AutoEventWireup="true" CodeFile="PowerRatings.aspx.cs" Inherits="PowerRatings" Title="Power Ratings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
Power Ratings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
						<p>
							<asp:DropDownList id="ddlSeasons" runat="server"></asp:DropDownList>
							<asp:Button id="btnGo" runat="server" Text="Go" onclick="btnGo_Click"></asp:Button></p>
						<asp:DataGrid id="dgPowerRatings" runat="server" AllowSorting="True" CssClass="grid">
							<HeaderStyle CssClass="gridheader"></HeaderStyle>
						</asp:DataGrid>
</asp:Content>

