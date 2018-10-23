<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" Title="Untitled Page" %>
<%@ MasterType VirtualPath ="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<table style="width: 760px; color: #330099; background-color: inactivecaptiontext;">
        <tr>
            <td colspan="2" style="height: 12px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" BackColor="InactiveCaptionText" Font-Bold="True"
                    Font-Size="14pt" ForeColor="#330099" Style="text-align: center" Text="Booking Tickets"
                    Width="152px"></asp:Label></td>
            <td style="width: 3px; height: 12px">
            </td>
        </tr>
        <tr>
            <td style="width: 1px; height: 3px;" valign="top">
    <asp:Label ID="Label1" runat="server" Text="To" style="color: #0000cc" ForeColor="#330099"></asp:Label></td>
            <td style="width: 94px; height: 3px;">
                <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Jaffna</asp:ListItem>
        <asp:ListItem>Colombo</asp:ListItem>
        <asp:ListItem>Kandy</asp:ListItem>
                    <asp:ListItem>Galle</asp:ListItem>
                    <asp:ListItem>Batticolo</asp:ListItem>
                    <asp:ListItem>vavuniya</asp:ListItem>
                    <asp:ListItem>Matara</asp:ListItem>
                    <asp:ListItem>Ampara</asp:ListItem>
                    <asp:ListItem>Trinco</asp:ListItem>
    </asp:DropDownList>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp;</td>
            <td style="width: 3px; height: 3px">
            </td>
        </tr>
        <tr>
            <td style="width: 1px; height: 26px;">
    <asp:Label ID="Label2" runat="server" Text="From" style="color: #0000cc" ForeColor="#330099"></asp:Label></td>
            <td style="width: 94px; height: 26px;">
                <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>Colombo</asp:ListItem>
        <asp:ListItem>Jaffna</asp:ListItem>
        <asp:ListItem>Trinco</asp:ListItem>
                    <asp:ListItem>Vavuniya</asp:ListItem>
                    <asp:ListItem>Matara</asp:ListItem>
                    <asp:ListItem>Kandy</asp:ListItem>
    </asp:DropDownList></td>
            <td style="width: 3px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 1px; height: 189px;" valign="top">
                <asp:Label ID="Label4" runat="server" Text="Date" style="color: #0000cc" Width="40px" ForeColor="#330099"></asp:Label></td>
            <td style="width: 94px; height: 189px;">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black"
                    BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black"
                    Height="128px" NextPrevFormat="ShortMonth" Width="176px">
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    <DayStyle BackColor="#CCCCCC" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt"
                        ForeColor="White" Height="12pt" />
                </asp:Calendar>
            </td>
            <td style="height: 189px; width: 3px;">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 173px">
                &nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" DataKeyNames="scId" DataSourceID="SqlDataSource2"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Style="color: #330099; background-color: inactivecaptiontext;" Font-Underline="False" Font-Overline="False" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" ForeColor="#330099" Height="104px" Width="744px" BackColor="#330099">
                    <Columns>
                        <asp:BoundField DataField="depaturePlace" HeaderText="Depature Place" SortExpression="depaturePlace" >
                            <ControlStyle Font-Overline="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ArivalPlace" HeaderText="Arival Place" SortExpression="ArivalPlace" />
                        <asp:BoundField DataField="dDate" HeaderText="Depature Date" SortExpression="dDate" HtmlEncode ="False" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="dTime" HeaderText="Depature Time" SortExpression="dTime" HtmlEncode ="False" DataFormatString="{0:t}" />
                        <asp:BoundField DataField="aDate" HeaderText="Arrival Date" SortExpression="aDate" HtmlEncode ="False" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" HtmlEncode="False" DataFormatString="{0:f2}" />
                        <asp:BoundField DataField="busId" HeaderText="Bus Id" SortExpression="busId" />
                        <asp:BoundField DataField="NoOfPassengers" HeaderText="Vacant seats" SortExpression="NoOfPassengers" />
                        <asp:BoundField DataField="scId" HeaderText="sc ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="scId" />
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    </Columns>
                    <HeaderStyle Font-Bold="True" Font-Overline="False" Font-Underline="False" />
                    <AlternatingRowStyle Font-Underline="False" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [schedule] WHERE (([ArivalPlace] = @ArivalPlace) AND ([depaturePlace] = @depaturePlace) AND ([dDate] = @dDate))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="ArivalPlace" PropertyName="SelectedValue"
                            Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" DefaultValue="1" Name="depaturePlace"
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="Calendar1" DefaultValue="10/25/2009" Name="dDate"
                            PropertyName="SelectedDate" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#330099"
                    OnClick="Button1_Click1" Text="Cancel" /></td>
            <td style="height: 173px; width: 3px;">
            </td>
        </tr>
    </table>
</asp:Content>

