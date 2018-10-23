<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cancellation.aspx.cs" Inherits="Cancellation" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <table
        style="width: 432px; color: #330099; background-color: inactivecaptiontext;">
                    <tr>
                        <td style="height: 21px" colspan="3">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp;
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" Text="Cancellation"
                                Width="112px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="height: 21px" colspan="3">
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/cancel a passenger.aspx" ForeColor="#330099" Width="144px" BackColor="#FFFFFF" Font-Bold="True" Font-Underline="False" OnClick="LinkButton2_Click" BorderWidth="1px">Selected  passengers</asp:LinkButton>
                            &nbsp; &nbsp; &nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Cancellation.aspx" ForeColor="#330099" Width="136px" BackColor="#FFFFFF" Font-Bold="True" Font-Underline="False" OnClick="LinkButton1_Click" BorderWidth="1px">Whole  Reservation</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td style="height: 21px" colspan="3">
                            <asp:Label ID="Label4" runat="server" Text="Credit card No"></asp:Label>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    </tr>
        <tr>
            <td style="height: 21px" colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Reservation ID" ForeColor="#330099"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" Font-Bold="True" ForeColor="#330099" /></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pId"
                    DataSourceID="SqlDataSource1" Width="104px" Height="104px" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="creditcardno" HeaderText="creditcardno" SortExpression="creditcardno" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="Last Name" SortExpression="LName" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="NicNo" HeaderText="Nic No" SortExpression="NicNo" />
                        <asp:BoundField DataField="address1" HeaderText="address(L1)" SortExpression="address1" />
                        <asp:BoundField DataField="address2" HeaderText="address(L2)" SortExpression="address2" />
                        <asp:BoundField DataField="TpNo" HeaderText="TpNo" SortExpression="TpNo" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="RID" HeaderText="Reservation ID" SortExpression="RID" />
                        <asp:BoundField DataField="CustID" HeaderText="Customer ID" SortExpression="CustID" />
                        <asp:BoundField DataField="ScId" HeaderText="Schedule ID" SortExpression="ScId" />
                        <asp:BoundField DataField="pId" HeaderText="Passenger ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="pId" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [search] WHERE (([RID] = @RID) AND ([creditcardno] = @creditcardno))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" DefaultValue="1" Name="RID" PropertyName="Text"
                            Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox2" DefaultValue="1" Name="creditcardno" PropertyName="Text"
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Confirm your Cancelation" Width="184px" Font-Bold="True" ForeColor="#330099" /></td>
            <td style="width: 174px">
                </td>
            <td style="width: 92px">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label" Width="240px" Visible="False"></asp:Label></td>
            <td style="width: 174px">
            </td>
            <td style="width: 92px">
            </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</asp:Content>

