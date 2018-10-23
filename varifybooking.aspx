<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="varifybooking.aspx.cs" Inherits="varifybooking" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 656px">
        <tr>
            <td colspan="2" style="height: 27px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#330099"
                    Text="Varify booking"></asp:Label></td>
            <td style="height: 27px">
            </td>
        </tr>
        <tr>
            <td style="height: 27px">
                <asp:Label ID="Label1" runat="server" Text="Credit card no" ForeColor="#330099" Width="128px"></asp:Label></td>
            <td style="height: 27px; width: 637px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" Font-Bold="True" ForeColor="#330099" /></td>
            <td style="height: 27px">
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:Label ID="Label2" runat="server" Text="Reservation ID" ForeColor="#330099" Width="128px"></asp:Label></td>
            <td style="height: 26px; width: 637px;">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td style="height: 26px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 168px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1px" AllowPaging="True" Font-Size="9pt" ForeColor="#330099">
                    <Columns>
                        <asp:BoundField DataField="creditcardno" HeaderText="creditcardno" SortExpression="creditcardno" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False"
                            ReadOnly="True" SortExpression="CustomerID" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ResevedDate" HtmlEncode ="False" DataFormatString="{0:d}" HeaderText="ResevedDate"
                            SortExpression="ResevedDate" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TravelDate" HtmlEncode="False" DataFormatString="{0:d}" HeaderText="TravelDate"
                            SortExpression="TravelDate" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:CheckBoxField>
                        <asp:BoundField DataField="DateOfLastChange" HtmlEncode="False" DataFormatString="{0:d}" HeaderText="DateOfLastChange"
                            SortExpression="DateOfLastChange" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="scId" HeaderText="scId" SortExpression="scId" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RID" HeaderText="RID" InsertVisible="False" ReadOnly="True"
                            SortExpression="RID" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Seats" HeaderText="Seats" SortExpression="Seats" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="depaturePlace" HeaderText="depaturePlace" SortExpression="depaturePlace" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ArivalPlace" HeaderText="ArivalPlace" SortExpression="ArivalPlace" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="dDate" HtmlEncode="False" DataFormatString="{0:d}" HeaderText="dDate" SortExpression="dDate" >
                            <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [varify] WHERE (([creditcardno] = @creditcardno) AND ([RID] = @RID))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" DefaultValue="1" Name="creditcardno" PropertyName="Text"
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" DefaultValue="1" Name="RID" PropertyName="Text"
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="height: 168px">
            </td>
        </tr>
    </table>
</asp:Content>

