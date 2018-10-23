<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="incomeDetails.aspx.cs" Inherits="Admin_incomeDetails" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 712px">
        <tr>
            <td colspan="3">
                &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BackColor="#FFFFFF" BorderWidth="1px"
                    Font-Bold="True" Font-Underline="False" ForeColor="#330099">Income Details</asp:LinkButton>
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
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" BackColor="#330099" Font-Bold="True" Font-Size="12pt"
                    ForeColor="White" Style="text-align: center" Text="Income Details" Width="104px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Date" ForeColor="#330099"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" Font-Bold="True" ForeColor="#330099" /></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AccId"
                    DataSourceID="SqlDataSource1" ForeColor="#330099">
                    <Columns>
                        <asp:BoundField DataField="Date1" HtmlEncode="False" DataFormatString="{0:d}" HeaderText="Date" SortExpression="Date1" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Reservation ID" HeaderText="RID" InsertVisible="False"
                            ReadOnly="True" SortExpression="RID" />
                        <asp:BoundField DataField="Account ID" HeaderText="AccId" ReadOnly="True" SortExpression="AccId" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [IncomeDetails] WHERE ([Date1] = @Date1)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" DefaultValue="11/2/2009" Name="Date1"
                            PropertyName="Text" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label2" runat="server" Text="Bus Registration No" ForeColor="#330099"></asp:Label>
                &nbsp; &nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Search" Font-Bold="True" ForeColor="#330099" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="busId"
                    DataSourceID="SqlDataSource2" Width="432px" ForeColor="#330099">
                    <Columns>
                        <asp:BoundField DataField="RegNo" HeaderText="Registration No" SortExpression="RegNo" />
                        <asp:BoundField DataField="busId" HeaderText="bus ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="busId" />
                        <asp:BoundField DataField="Date1" HeaderText="Date" SortExpression="Date1" HtmlEncode="False" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Rid" HeaderText="Reservation ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="Rid" />
                    </Columns>
                </asp:GridView>
                &nbsp;
            </td>
        </tr>
    </table>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [income1] WHERE ([RegNo] = @RegNo)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" DefaultValue="1" Name="RegNo" PropertyName="Text"
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
</asp:Content>

