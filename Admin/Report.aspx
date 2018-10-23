<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Report" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 584px">
        <tr>
            <td colspan="3" style="height: 20px">
                &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" BackColor="#FFFFFF" BorderWidth="1px"
                    Font-Bold="True" Font-Underline="False" ForeColor="#330099" PostBackUrl="~/Admin/incomeDetails.aspx">Income Details</asp:LinkButton>
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
            <td colspan="3" style="height: 20px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" BackColor="#330099" Font-Bold="True" Font-Size="12pt"
                    ForeColor="White" Style="text-align: center" Text="Report" Width="104px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px">
                <asp:Label ID="Label1" runat="server" Text="Schedule ID" Width="128px" ForeColor="#330099"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="48px"></asp:TextBox></td>
            <td style="width: 4px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="3">
                <asp:Label ID="Label2" runat="server" Text="Status" ForeColor="#330099"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Width="56px">
                    <asp:ListItem>True</asp:ListItem>
                    <asp:ListItem>False</asp:ListItem>
                </asp:DropDownList>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <asp:Button ID="Button1" runat="server" Text="search" Font-Bold="True" ForeColor="#330099" /></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AutoGenerateColumns="False" ForeColor="#330099" Width="752px">
                    <Columns>
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="Last Name" SortExpression="LName" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="NicNo" HeaderText="Nic No" SortExpression="NicNo" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="RID" HeaderText="Reservation ID" SortExpression="RID" />
                        <asp:BoundField DataField="ScId" HeaderText="Schedule ID" SortExpression="ScId" />
                        <asp:BoundField DataField="pId" HeaderText="Passenger ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="pId" />
                        <asp:BoundField DataField="CustID" HeaderText="Customer ID" SortExpression="CustID" />
                        <asp:BoundField DataField="dDate" HtmlEncode=
                        
                        
                        
                        "False" DataFormatString="{0:d}" HeaderText="Depature date" SortExpression="dDate" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [Report] WHERE (([ScId] = @ScId) AND ([Status] = @Status))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" DefaultValue="1" Name="ScId" PropertyName="Text"
                            Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="true" Name="Status"
                            PropertyName="SelectedValue" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Print" /></td>
        </tr>
    </table>
</asp:Content>

