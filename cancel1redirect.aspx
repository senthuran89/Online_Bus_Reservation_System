<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cancel1redirect.aspx.cs" Inherits="cancel1redirect" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 664px">
        <tr>
            <td style="height: 24px" colspan="3">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#330099"
                    Text="Cancel a ticket" Width="152px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 9px">
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Reservation ID" Width="136px" ForeColor="#330099"></asp:Label>
            </td>
            <td style="width: 73px">
                <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#330099"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 9px; height: 21px;">
                <asp:Label ID="Label2" runat="server" Text="Passenger ID" Width="136px" ForeColor="#330099"></asp:Label>
            </td>
            <td style="width: 73px; height: 21px;">
                <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="#330099"></asp:Label></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 9px">
                </td>
            <td style="width: 73px">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 9px">
                <asp:Button ID="Button1" runat="server" Text="Confirm your Cancellation" Font-Bold="True" Font-Size="12pt" ForeColor="#330099" OnClick="Button1_Click" Width="232px" /></td>
            <td style="width: 73px">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#330099"
                    Text="Label" Width="312px" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#330099" OnClick="Button2_Click"
                    Text="Cancel" /></td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp;
</asp:Content>

