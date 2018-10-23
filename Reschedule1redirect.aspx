<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reschedule1redirect.aspx.cs" Inherits="Reschedule1redirect" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 648px">
        <tr>
            <td>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#330099"
                    Text="Confirmation of rescheduling for selected passengers"></asp:Label></td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Reservation ID" ForeColor="#330099"></asp:Label></td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#330099"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Label ID="Label3" runat="server" Text="Passenger ID" ForeColor="#330099"></asp:Label></td>
            <td style="height: 21px">
                <asp:Label ID="Label4" runat="server" Text="label" ForeColor="#330099"></asp:Label></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="height: 16px">
                <asp:Label ID="Label7" runat="server" Text="New Travel Date" ForeColor="#330099"></asp:Label></td>
            <td style="height: 16px">
                <asp:Label ID="Label8" runat="server" Text="Label" ForeColor="#330099"></asp:Label></td>
            <td style="height: 16px">
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Label ID="Label9" runat="server" Text="New Schedule ID" ForeColor="#330099"></asp:Label></td>
            <td style="height: 21px">
                <asp:Label ID="Label10" runat="server" Text="label" ForeColor="#330099"></asp:Label></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
            </td>
            <td style="height: 21px">
            </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reschedule" Font-Bold="True" ForeColor="#FFFFFF" BackColor="#330099" Font-Size="12pt" /></td>
            <td style="height: 26px">
            </td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="#330099" Width="272px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 26px">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#330099" OnClick="Button2_Click"
                    Text="Print ticket" /></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 26px">
                <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="#330099" OnClick="Button3_Click"
                    Text="Cancel" /></td>
        </tr>
    </table>
</asp:Content>

