<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 670px">
        <tr>
            <td colspan="3" rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td>
                &nbsp; &nbsp; &nbsp;
                <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" DisplayRememberMe="False" style="border-left-color: #330099; border-bottom-color: #330099; border-top-style: outset; border-top-color: #330099; border-right-style: outset; border-left-style: outset; border-right-color: #330099; border-bottom-style: outset" Font-Bold="False" Font-Size="14pt" ForeColor="#330099" Height="184px" Width="296px" LoginButtonText=" Log In" TitleText="Administrator Log In">
                </asp:Login>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

