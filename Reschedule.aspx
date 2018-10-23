<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reschedule.aspx.cs" Inherits="Reschedule" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;<table style="width: 448px; height: 96px; color: #330099; background-color: inactivecaptiontext;">
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#330099" Text="Rescheduling Passenger information" Font-Size="14pt"></asp:Label></td>
            <td>
                &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
                &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Reservation ID"></asp:Label></td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Label ID="Label10" runat="server" Text="New Schedule ID"></asp:Label></td>
            <td style="height: 21px">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="New Travel Date"></asp:Label></td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
            <td>
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
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Reschedule" Width="104px" style="color: #ffffff; background-color: #330099" Font-Bold="True" Font-Size="12pt" Height="32px" /></td>
            <td style="height: 26px">
                </td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
                &nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="12pt" Text="Label"
                    Width="328px" Visible="False"></asp:Label></td>
            <td style="height: 21px">
                </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#330099" OnClick="Button2_Click"
                    Text="Print ticket" /></td>
            <td>
                </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="#330099" OnClick="Button3_Click"
                    Text="Cancel" /></td>
            <td style="height: 21px">
                </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</asp:Content>

