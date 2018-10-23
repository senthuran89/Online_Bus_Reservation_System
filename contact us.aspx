<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact us.aspx.cs" Inherits="contact_us" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; 
    <table style="width: 712px; height: 224px;">
        <tr>
            <td colspan="4" style="height: 11px">
                <h1>
                    <span style="color: #330099">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                        <span style="font-family: Monotype Corsiva">Contact Us</span></span><span style="font-family: Monotype Corsiva">&nbsp;</span></h1>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <strong><span style="color: #330099">&nbsp; &nbsp; Tickettravela.com<br />
                </span></strong><span style="color: #330099">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;1B , Goldline Business Centre,&nbsp;<br />
                </span><span style="color: #330099">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Brown Road ,<br />
                </span><span style="color: #330099">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Jaffna&nbsp;<br />
                </span><span style="color: #330099">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Phone : 021 373 4134</span><p>
                    <span style="color: #330099">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; Email : sajee</span><a href="mailto:contactus@ticketvala.com"><span style="color: #330099">@tickettravela.com</span></a><br />
                </p>
            </td>
        </tr>
        <tr>
            <td colspan="4" rowspan="2" valign="bottom">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                &nbsp; &nbsp;<br />
                &nbsp; &nbsp;
                &nbsp; &nbsp; 
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#330099"
                    Text="Get in touch with us"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="3" rowspan="1" style="width: 200px; height: 25px">
                <asp:Label ID="Label1" runat="server" Text="Your name" Width="88px" ForeColor="#330099"></asp:Label></td>
            <td colspan="1" rowspan="1" style="width: 3px; height: 25px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="3" rowspan="1" style="width: 200px; height: 25px">
                <asp:Label ID="Label3" runat="server" Text="E - mail " ForeColor="#330099" Width="88px"></asp:Label></td>
            <td colspan="1" rowspan="1" style="width: 3px; height: 25px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="3" rowspan="1" style="width: 200px; height: 25px">
                <asp:Label ID="Label4" runat="server" Text="Subject" ForeColor="#330099" Width="88px"></asp:Label></td>
            <td colspan="1" rowspan="1" style="width: 3px; height: 25px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="3" rowspan="1" style="width: 200px; height: 25px">
                <asp:Label ID="Label5" runat="server" Text="City" ForeColor="#330099" Width="32px"></asp:Label></td>
            <td colspan="1" rowspan="1" style="width: 3px; height: 25px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="3" rowspan="1" style="width: 200px; height: 25px">
                <asp:Label ID="Label6" runat="server" Text="Phone No" ForeColor="#330099" Width="80px"></asp:Label></td>
            <td colspan="1" rowspan="1" style="width: 3px; height: 25px">
                <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="3" rowspan="1" style="width: 200px; height: 25px">
                <asp:Label ID="Label7" runat="server" Text="Comment" ForeColor="#330099" Width="80px"></asp:Label></td>
            <td colspan="1" rowspan="1" style="width: 3px; height: 25px">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="144px" Height="16px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="3" rowspan="1" style="height: 24px; width: 200px;">
            </td>
            <td colspan="1" rowspan="1" style="width: 3px; height: 24px">
                <asp:Button ID="Button1" runat="server" Text="Submit" Font-Bold="True" ForeColor="#330099" /></td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;
</asp:Content>

