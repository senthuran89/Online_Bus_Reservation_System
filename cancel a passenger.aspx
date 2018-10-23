<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cancel a passenger.aspx.cs" Inherits="cancel_a_passenger" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 448px">
        <tr>
            <td colspan="3" style="height: 24px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#330099"
                    Text="Cancellation" Width="120px"></asp:Label></td>
            <td style="height: 24px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#330099" Font-Bold="True" Width="160px" BackColor="#FFFFFF" BorderWidth="1px" Font-Underline="False">selected passengers</asp:LinkButton>
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#330099" Font-Bold="True" BackColor="#FFFFFF" BorderWidth="1px" Font-Underline="False">Whole Reservation</asp:LinkButton></td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 26px">
                <asp:Label ID="Label3" runat="server" ForeColor="#330099" Text="Credit card No"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Reservation ID" ForeColor="#330099"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Search" Font-Bold="True" ForeColor="#330099" /></td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp; &nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pId"
                    DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" ForeColor="#330099">
                    <Columns>
                        <asp:BoundField DataField="creditcardno" HeaderText="creditcardno" SortExpression="creditcardno" />
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="NicNo" HeaderText="NicNo" SortExpression="NicNo" />
                        <asp:BoundField DataField="address1" HeaderText="address1" SortExpression="address1" />
                        <asp:BoundField DataField="address2" HeaderText="address2" SortExpression="address2" />
                        <asp:BoundField DataField="TpNo" HeaderText="TpNo" SortExpression="TpNo" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="RID" HeaderText="RID" SortExpression="RID" />
                        <asp:BoundField DataField="CustID" HeaderText="CustID" SortExpression="CustID" />
                        <asp:BoundField DataField="ScId" HeaderText="ScId" SortExpression="ScId" />
                        <asp:BoundField DataField="pId" HeaderText="pId" InsertVisible="False" ReadOnly="True"
                            SortExpression="pId" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [search] WHERE (([creditcardno] = @creditcardno) AND ([RID] = @RID))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" DefaultValue="1" Name="creditcardno" PropertyName="Text"
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" DefaultValue="1" Name="RID" PropertyName="Text"
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" Font-Bold="True" ForeColor="#330099" /></td>
            <td style="width: 326px">
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

