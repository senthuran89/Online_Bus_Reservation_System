<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddPassengers.aspx.cs" Inherits="AddPassengers" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 664px">
        <tr>
            <td style="height: 21px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" BackColor="InactiveCaptionText" Font-Bold="True" Font-Size="14pt"
                    ForeColor="#330099" Style="text-align: center" Text="Booked passenger details"
                    Width="240px"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pId"
                    DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" ForeColor="#330099">
                    <Columns>
                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="NicNo" HeaderText="NicNo" SortExpression="NicNo" />
                        <asp:BoundField DataField="address1" HeaderText="Address(L1)" SortExpression="address1" />
                        <asp:BoundField DataField="address2" HeaderText="Address(L2)" SortExpression="address2" />
                        <asp:BoundField DataField="TpNo" HeaderText="TPNo" SortExpression="TpNo" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="RID" HeaderText="RID" SortExpression="RID" />
                        <asp:BoundField DataField="CustID" HeaderText="CustomerID" SortExpression="CustID" />
                        <asp:BoundField DataField="ScID" HeaderText="ScID" SortExpression="ScID" />
                        <asp:BoundField DataField="pId" HeaderText="PID" InsertVisible="False" ReadOnly="True"
                            SortExpression="pId" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    SelectCommand="SELECT * FROM [passengers] WHERE ([RID] = @RID)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="37" Name="RID" SessionField="RID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="height: 21px">
            </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Label ID="Label8" runat="server" Text="Your Reservation ID is " style="color: #330099" BackColor="#FFFFFF" Font-Bold="True" Font-Size="12pt"></asp:Label><asp:Label ID="Label7" runat="server" Text="Label" Width="56px" BackColor="#FFFFFF" Font-Bold="True" Font-Size="12pt" ForeColor="#330099"></asp:Label></td>
            <td style="height: 21px">
            </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Label ID="Label10" runat="server" ForeColor="#330099" Text="Your Schedule ID is" BackColor="#FFFFFF" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="Label" Width="72px" BackColor="White" Font-Bold="True" ForeColor="#330099"></asp:Label></td>
            <td style="height: 21px">
            </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
            </td>
            <td style="height: 21px">
            </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label13" runat="server" BackColor="InactiveCaptionText" Font-Bold="True" Font-Size="14pt"
                    ForeColor="#330099" Style="text-align: center" Text="Add additional passenger(s)"
                    Width="248px"></asp:Label>
                <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
                    <table style="width: 605px; color: #330099; background-color: inactivecaptiontext;">
                        <tr>
                            <td style="height: 26px">
                                <asp:Label ID="Label2" runat="server" Text="First name"></asp:Label></td>
                            <td style="width: 349px; height: 26px">
                                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Mr</asp:ListItem>
                                    <asp:ListItem>Miss</asp:ListItem>
                                    <asp:ListItem>Mrs</asp:ListItem>
                                    <asp:ListItem>Dr</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            <td style="width: 46px; height: 26px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    Display="Dynamic" ErrorMessage="First name Required" SetFocusOnError="True" Width="144px" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Last name"></asp:Label></td>
                            <td style="width: 349px">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 46px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                    Display="Dynamic" ErrorMessage="Last name Required" SetFocusOnError="True" Width="145px" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="NIC No"></asp:Label></td>
                            <td style="width: 349px">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 46px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3"
                                    Display="Dynamic" ErrorMessage="NIC No Required" SetFocusOnError="True" Width="144px" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="height: 26px">
                                <asp:Label ID="Label3" runat="server" Text="Address (line1)"></asp:Label></td>
                            <td style="width: 349px; height: 26px">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                            <td style="width: 46px; height: 26px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
                                    Display="Dynamic" ErrorMessage="Address Required" SetFocusOnError="True" Width="144px" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Address (line2)"></asp:Label></td>
                            <td style="width: 349px">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                            <td style="width: 46px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5"
                                    Display="Dynamic" ErrorMessage="Address Required" SetFocusOnError="True" Width="144px" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="height: 27px">
                                <asp:Label ID="Label6" runat="server" Text="TP No"></asp:Label></td>
                            <td style="width: 349px; height: 27px">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                            <td style="width: 46px; height: 27px">
                                </td>
                        </tr>
                        <tr>
                            <td style="height: 26px">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" style="color: #ffffff; background-color: #330099" Font-Bold="True" Font-Size="12pt" Height="32px" Width="64px" ValidationGroup="Group1" /></td>
                            <td style="width: 349px; height: 26px">
                            </td>
                            <td style="width: 46px; height: 26px">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 26px" colspan="3">
                    <asp:Label ID="Label9" runat="server" Text="Label" Width="32px" Visible="False"></asp:Label>
                                <asp:Label ID="Label12" runat="server" ForeColor="#330099" Text="Passenger(s) have booked"
                                    Visible="False" Width="168px"></asp:Label></td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#000099" Font-Bold="True" Font-Size="12pt"
                    ForeColor="#FFFFFF" OnClick="Button2_Click" Text="Confirm all Passengers" Width="206px" /></asp:Panel>
                &nbsp; &nbsp;
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="height: 17px">
                &nbsp;</td>
            <td style="height: 17px">
            </td>
            <td style="height: 17px">
            </td>
        </tr>
    </table>
</asp:Content>

