<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReserversionDetails.aspx.cs" Inherits="Admin_ReserversionDetails" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 760px">
        <tr>
            <td colspan="3">
                <asp:LinkButton ID="LinkButton4" runat="server" BackColor="#FFFFFF" BorderColor="Navy"
                    BorderWidth="1px" Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="8px" OnClick="LinkButton4_Click" PostBackUrl="~/Admin/incomeDetails.aspx"
                    Style="text-align: center">IncomeDetails</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" BackColor="#FFFFFF" BorderColor="Navy"
                    BorderWidth="1px" Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/ReserversionDetails.aspx" Style="text-align: center"
                    Width="144px">ReservationDetails</asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="White" BorderColor="Navy"
                    BorderWidth="1px" Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/Scedule.aspx" Style="text-align: center" Width="80px">Scheduling</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#FFFFFF" BorderColor="Navy"
                    BorderWidth="1px" Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/Credit Bank.aspx" Style="text-align: center">CreditBank</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#FFFFFF" BorderWidth="1px"
                    Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/Bus.aspx" Style="text-align: center" Width="72px">BusDetails</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" BackColor="#FFFFFF" BorderWidth="1px"
                    Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/Report.aspx" Style="text-align: center" Width="56px">Report</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" BackColor="#330099" Font-Bold="True" Font-Size="12pt"
                    ForeColor="White" Style="text-align: center" Text="Reservation Details" Width="216px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Status of Reservation" ForeColor="#330099"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>True</asp:ListItem>
                    <asp:ListItem>False</asp:ListItem>
                </asp:DropDownList>
                &nbsp; &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" Font-Bold="True" ForeColor="#330099" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RID"
                    DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                    Width="792px" ForeColor="#330099">
                    <Columns>
                        <asp:BoundField DataField="ResevedDate" HeaderText="Reseved Date" SortExpression="ResevedDate" HtmlEncode="False" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="TravelDate" HeaderText="Travel Date" SortExpression="TravelDate" HtmlEncode="False" DataFormatString="{0:d}" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="DateOfLastChange" HeaderText="Date Of Last Change" SortExpression="DateOfLastChange" HtmlEncode="False" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="scId" HeaderText="schedule ID" SortExpression="scId" />
                        <asp:BoundField DataField="Seats" HeaderText="Seats" SortExpression="Seats" />
                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                        <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" HtmlEncode="False" />
                        <asp:BoundField DataField="RID" HeaderText="Reservation ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="RID" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [Reservation] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="true" Name="Status"
                            PropertyName="SelectedValue" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

