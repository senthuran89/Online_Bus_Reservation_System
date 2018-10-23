<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Reservation" Title="Untitled Page" %>
<%@ MasterType VirtualPath ="~/MasterPage.master"  %> 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 756px; background-color: inactivecaptiontext; color: #330099;">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#330099" Text="Credit card holder's information" Font-Size="14pt"></asp:Label></td>
            <td colspan="1">
            </td>
        </tr>
        <tr>
            <td style="width: 140px; height: 26px">
                <asp:Label ID="Label9" runat="server" Text="Credit card no" ForeColor="#330099"></asp:Label></td>
            <td style="width: 231px; height: 26px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            <td style="width: 231px; height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7"
                    Display="Dynamic" ErrorMessage="Credit card no Required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 140px; height: 26px">
                <asp:Label ID="Label8" runat="server" Text="NIC No" ForeColor="#330099"></asp:Label></td>
            <td style="width: 231px; height: 26px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            <td style="width: 231px; height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6"
                    Display="Dynamic" ErrorMessage="NIC No Required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 140px; height: 26px;">
                <asp:Label ID="Label1" runat="server" Text="First Name" ForeColor="#330099"></asp:Label></td>
            <td style="height: 26px; width: 231px;">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                    <asp:ListItem>others</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 231px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 140px; height: 26px;">
                <asp:Label ID="Label5" runat="server" Text="LastName" ForeColor="#330099"></asp:Label></td>
            <td style="height: 26px; width: 231px;">
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            <td style="width: 231px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 140px">
                <asp:Label ID="Label6" runat="server" Text="Address (line 1)" ForeColor="#330099"></asp:Label></td>
            <td style="width: 231px">
                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            <td style="width: 231px">
            </td>
        </tr>
        <tr>
            <td style="width: 140px; height: 26px;">
                <asp:Label ID="Label11" runat="server" ForeColor="#330099" Text="Address (line 2)"></asp:Label></td>
            <td style="height: 26px; width: 231px;">
                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            <td style="width: 231px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 140px">
                <asp:Label ID="Label7" runat="server" Text="TP No" ForeColor="#330099"></asp:Label></td>
            <td style="width: 231px">
                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            <td style="width: 231px">
            </td>
        </tr>
        <tr>
            <td style="width: 140px; height: 10px">
                <asp:Label ID="Label17" runat="server" ForeColor="#330099" Text="Total passenger(s)"></asp:Label></td>
            <td style="height: 10px; width: 231px;">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
            <td style="width: 231px; height: 10px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox12"
                    Display="Dynamic" ErrorMessage="Total passenger Required" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 140px; height: 16px">
                <asp:Label ID="Label3" runat="server" Style="color: #330099" Text="Are you travelling?"></asp:Label></td>
            <td style="height: 16px; width: 231px;">
                <asp:ListBox ID="ListBox1" runat="server" Height="22px" Width="151px">
                    <asp:ListItem>yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:ListBox></td>
            <td style="width: 231px; height: 16px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 10px">
            </td>
            <td colspan="1" style="height: 10px">
            </td>
        </tr>
        <tr>
            <td style="width: 140px; height: 21px">
                <asp:Label ID="Label18" runat="server" Text="Scid" style="color: #330099"></asp:Label></td>
            <td style="height: 21px; width: 231px;">
    <asp:Label ID="Label2" runat="server" Text="Label" Width="40px"></asp:Label></td>
            <td style="width: 231px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 140px; height: 21px">
                <asp:Label ID="Label20" runat="server" Text="Rate" style="color: #330099"></asp:Label></td>
            <td style="height: 21px; width: 231px;">
    <asp:Label ID="Label4" runat="server" Text="Label" Width="40px"></asp:Label></td>
            <td style="width: 231px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 140px;">
                <asp:Label ID="Label10" runat="server" Style="color: #330099" Text="Travel date"></asp:Label></td>
            <td style="width: 231px;">
                <asp:Label ID="Label12" runat="server" Text="Label" Width="40px"></asp:Label></td>
            <td style="width: 231px">
            </td>
        </tr>
        <tr>
            <td style="width: 140px; height: 22px">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book now" Width="88px" BackColor="#330099" ForeColor="#FFFFFF" Height="32px" Font-Bold="True" Font-Size="12pt" /></td>
            <td style="height: 22px; width: 231px;">
                <asp:Button ID="Button2" runat="server" BackColor="#000099" Font-Bold="True" Font-Size="12pt"
                    ForeColor="#FFFFFF" Height="32px" OnClick="Button2_Click1" Text="Confirm your booking"
                    Width="184px" /></td>
            <td style="width: 231px; height: 22px">
            </td>
        </tr>
    </table>


</asp:Content>

