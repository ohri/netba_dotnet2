<%@ Page Title="Edit Owner Info" Language="C#" MasterPageFile="~/Netba.master" AutoEventWireup="true" CodeFile="EditInfo.aspx.cs" Inherits="EditInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
Owner Information Edit
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" Runat="Server">
<table border="0" cellpadding="5" cellspacing="5">
<tr>
<td>First Name</td>
<td><asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>Last Name</td>
<td><asp:TextBox ID="tbLastName" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>Email</td>
<td><asp:TextBox ID="tbEmail" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>IM Information</td>
<td><asp:TextBox ID="tbIM" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox></td>
</tr>
<tr>
<td>City</td>
<td><asp:TextBox ID="tbCity" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>State</td>
<td><asp:TextBox ID="tbState" runat="server"></asp:TextBox></td>
</tr>    
<tr>
<td colspan="2" align="center">
<asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" 
        style="height: 26px" />
&nbsp;&nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancel" 
        onclick="btnCancel_Click" />
</td>
</tr>
</table>
</asp:Content>

