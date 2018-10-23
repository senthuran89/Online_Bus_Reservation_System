<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reachedule a passengert.aspx.cs" Inherits="Reachedule_a_passengert" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 664px">
        <tr>
            <td colspan="3" style="height: 24px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#330099"
                    Text="Rescheduling for selected passengers"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Reservation ID" ForeColor="#330099"></asp:Label></td>
            <td colspan="2">
                &nbsp;<asp:Label ID="Label3" runat="server" Text="Label" Width="70px" ForeColor="#330099"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="678px">
                    <Columns>
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="NicNo" HeaderText="NicNo" SortExpression="NicNo" />
                        <asp:BoundField DataField="address1" HeaderText="address1" SortExpression="address1" />
                        <asp:BoundField DataField="address2" HeaderText="address2" SortExpression="address2" />
                        <asp:BoundField DataField="TpNo" HeaderText="TpNo" SortExpression="TpNo" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="RID" HeaderText="RID" SortExpression="RID" />
                        <asp:BoundField DataField="CustID" HeaderText="CustID" SortExpression="CustID" />
                        <asp:BoundField DataField="ScId" HeaderText="ScId" SortExpression="ScId" />
                        <asp:BoundField DataField="pId" HeaderText="pId" InsertVisible="False" ReadOnly="True"
                            SortExpression="pId" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [passengers] WHERE ([RID] = @RID)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="1" Name="RID" SessionField="RID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <asp:Label ID="Label2" runat="server" Text="Depature Date" ForeColor="#330099"></asp:Label></td>
            <td colspan="1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td colspan="3">
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Search" Font-Bold="True" ForeColor="#330099" /></td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="scId"
                    DataSourceID="SqlDataSource2" Width="539px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="depaturePlace" HeaderText="depaturePlace" SortExpression="depaturePlace" />
                        <asp:BoundField DataField="ArivalPlace" HeaderText="ArivalPlace" SortExpression="ArivalPlace" />
                        <asp:BoundField DataField="dDate" HtmlEncode="False" DataFormatString="{0:d}" HeaderText="dDate" SortExpression="dDate" />
                        <asp:BoundField DataField="dTime" HtmlEncode="False" DataFormatString="{0:t}" HeaderText="dTime" SortExpression="dTime" />
                        <asp:BoundField DataField="aDate" HtmlEncode="False" DataFormatString="{0:d}" HeaderText="aDate" SortExpression="aDate" />
                        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                        <asp:BoundField DataField="busId" HeaderText="busId" SortExpression="busId" />
                        <asp:BoundField DataField="NoOfPassengers" HeaderText="NoOfPassengers" SortExpression="NoOfPassengers" />
                        <asp:BoundField DataField="scId" HeaderText="scId" InsertVisible="False" ReadOnly="True"
                            SortExpression="scId" />
                        <asp:CommandField ShowSelectButton="True" SelectText="Reschedule" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [schedule] WHERE ([dDate] > @dDate)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" DefaultValue="10/27/2009" Name="dDate"
                            PropertyName="Text" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Cancel" Font-Bold="True" ForeColor="#330099" /></td>
        </tr>
    </table>
</asp:Content>

