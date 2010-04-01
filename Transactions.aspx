<%@ Page Language="C#" MasterPageFile="~/Netba.master" AutoEventWireup="true" CodeFile="Transactions.aspx.cs"
    Inherits="Transactions" Title="Transactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="Server">
    Transactions
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="Server">
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="TransactionEditor.aspx?Mode=New">New Transaction</asp:HyperLink></p>
    <p>
        <asp:DataGrid ID="dgTransactions" runat="server" CssClass="grid" AutoGenerateColumns="False">
            <HeaderStyle CssClass="gridheader"></HeaderStyle>
            <Columns>
                <asp:BoundColumn DataField="WhenSubmitted" HeaderText="When Submitted"></asp:BoundColumn>
                <asp:HyperLinkColumn Text="Edit" DataNavigateUrlField="TransactionId" DataNavigateUrlFormatString="TransactionEditor.aspx?TransactionId={0}">
                </asp:HyperLinkColumn>
                <asp:BoundColumn DataField="WhenProcessed" HeaderText="Processed"></asp:BoundColumn>
            </Columns>
        </asp:DataGrid></p>
</asp:Content>
