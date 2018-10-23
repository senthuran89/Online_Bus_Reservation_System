<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchReschedule.aspx.cs" Inherits="searchReschedule" Title="Untitled Page" %>

<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 416px">
        <tr>
            <td colspan="3" style="width: 795px; height: 14px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt"
                    ForeColor="#330099" Text="Rescheduling"></asp:Label></td>
            <td style="height: 14px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 795px; height: 14px">
                <asp:Label ID="Label2" runat="server" ForeColor="#330099" Text="Credit card No"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td style="height: 14px">
            </td>
        </tr>
        <tr>
            <td style="width: 795px; height: 14px;" colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Reservation ID" ForeColor="#330099"></asp:Label>&nbsp;
                
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" Font-Bold="True" ForeColor="#330099" />&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    DataKeyNames="pId" DataSourceID="SqlDataSource1" ForeColor="#330099">
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
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [search] WHERE (([creditcardno] = @creditcardno) AND ([RID] = @RID))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox3" DefaultValue="1" Name="creditcardno" PropertyName="Text"
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" DefaultValue="1" Name="RID" PropertyName="Text"
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp; &nbsp;&nbsp;
            </td>
            <td style="height: 14px">
            </td>
        </tr>
        <tr>
            <td colspan="3" rowspan="1" style="width: 795px; height: 29px">
                <asp:Button ID="Button2" runat="server" Text="Whole Reservation" OnClick="Button2_Click" Font-Bold="True" ForeColor="#330099" BorderWidth="1px" Width="176px" BackColor="WhiteSmoke" />
                &nbsp;&nbsp; &nbsp;<asp:Button ID="Button4" runat="server" Font-Bold="True" ForeColor="#330099" OnClick="Button4_Click"
                    Text="Selected passengers" Width="160px" BorderWidth="1px" BackColor="WhiteSmoke" /></td>
        </tr>
        <tr>
            <td colspan="3" rowspan="1" style="width: 795px; height: 29px">
                <asp:Label ID="Label3" runat="server" Text="Enter the Travel Date" ForeColor="#330099"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" Font-Bold="True" ForeColor="#330099" /></td>
        </tr>
        <tr>
            <td colspan="3" rowspan="1" style="width: 795px; height: 273px" valign="top">
                <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" Height="216px" Width="280px" DataKeyNames="scid,dDate" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" style="color: #330099; background-color: inactivecaptiontext" ForeColor="#330099" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="depaturePlace" HeaderText="depature Place" SortExpression="depaturePlace" />
                        <asp:BoundField DataField="ArivalPlace" HeaderText="Arival Place" SortExpression="ArivalPlace" />
                        <asp:BoundField DataField="dDate" HtmlEncode="False" DataFormatString="{0:d}" HeaderText="Depature Date" SortExpression="dDate" />
                        <asp:BoundField DataField="dTime" HtmlEncode="False" DataFormatString="{0:t}" HeaderText="Depature Time" SortExpression="dTime" />
                        <asp:BoundField DataField="aDate" HtmlEncode="False" DataFormatString="{0:d}" HeaderText="Arrival Date" SortExpression="aDate" />
                        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" DataFormatString="{0:f2}" />
                        <asp:BoundField DataField="busId" HeaderText="busId" SortExpression="busId" />
                        <asp:BoundField DataField="NoOfPassengers" HeaderText="vacant seats" SortExpression="NoOfPassengers" />
                        <asp:BoundField DataField="scId" HeaderText="scId" InsertVisible="False" ReadOnly="True"
                            SortExpression="scId" />
                        <asp:CommandField ShowSelectButton="True" SelectText="Reschedule" />
                    </Columns>
                </asp:GridView>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [schedule] WHERE ([dDate] > @dDate)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" DefaultValue="10/27/2009" Name="dDate"
                            PropertyName="Text" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Font-Bold="True" ForeColor="#330099" OnClick="Button5_Click"
                    Text="Cancel" /></td>
        </tr>
    </table>
</asp:Content>

