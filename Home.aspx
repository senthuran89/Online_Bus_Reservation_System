<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TextArea1_onclick() {

}

// ]]>
</script>

    &nbsp;&nbsp;<table style="width: 600px">
        <tr>
            <td colspan="2" style="height: 31px; background-color: inactivecaptiontext; width: 795px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" BackColor="InactiveCaptionText" Height="80px"
                    ImageUrl="~/wel.jpg" Style="background-color: inactivecaptiontext" Width="248px" /></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 25px; background-color: inactivecaptiontext; width: 795px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" BackColor="#330099" Font-Bold="True" Font-Size="20pt"
                    ForeColor="White" Style="color: #330099; background-color: inactivecaptiontext" Text="Largest online bus ticketing platform" Font-Names="Cooper Black"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 274px; width: 795px;">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/main_banner.jpg" Width="744px" Height="432px" /></td>
        </tr>
    </table>
</asp:Content>

