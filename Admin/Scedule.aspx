<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Scedule.aspx.cs" Inherits="Scedule" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width: 744px; height: 512px; color: #330099; background-color: inactivecaptiontext;">
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton4" runat="server" BackColor="#FFFFFF" BorderWidth="1px"
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
            <td style="height: 26px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="Label10" runat="server" BackColor="#330099" Font-Bold="True" Font-Size="12pt"
                    ForeColor="#FFFFFF" Style="text-align: center" Text="Scheduling" Width="104px"></asp:Label></td>
        </tr>
        <tr>
            <td rowspan="1" style="width: 635px; background-color: inactivecaptiontext; color: #330099;" valign="top">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
                    DataKeyNames="scId" DataSourceID="SqlDataSource1" Height="152px" Width="568px" OnPageIndexChanging="DetailsView1_PageIndexChanging" BackColor="InactiveCaptionText" Font-Bold="True" ForeColor="#330099">
                    <Fields>
                        <asp:TemplateField HeaderText="Depature Place" SortExpression="depaturePlace">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("depaturePlace") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    Display="Dynamic" ErrorMessage="Enter the Depature place " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("depaturePlace") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                                    Display="Dynamic" ErrorMessage="Enter the Depature place" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("depaturePlace") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Arival Place" SortExpression="ArivalPlace">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ArivalPlace") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                                    Display="Dynamic" ErrorMessage="Enter the Arrival place " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ArivalPlace") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2"
                                    Display="Dynamic" ErrorMessage="Enter the Arrival place " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("ArivalPlace") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Depature Date" SortExpression="dDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("dDate") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3"
                                    Display="Dynamic" ErrorMessage="Enter the Depature date " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("dDate", "{0:d}") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3"
                                    Display="Dynamic" ErrorMessage="Enter the Depature date " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("dDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Depature Time" SortExpression="dTime">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dTime") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4"
                                    Display="Dynamic" ErrorMessage="Enter the Time " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dTime", "{0:t}") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4"
                                    Display="Dynamic" ErrorMessage="Enter the Time " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("dTime", "{0:t}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Arrival Date" SortExpression="aDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("aDate") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5"
                                    Display="Dynamic" ErrorMessage="Enter the Date " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("aDate", "{0:d}") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox5"
                                    Display="Dynamic" ErrorMessage="Enter the Date" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("aDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rate" SortExpression="rate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("rate") %>'></asp:TextBox>&nbsp;
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6"
                                    Display="Dynamic" ErrorMessage="Enter the correct rate" MaximumValue="1500" MinimumValue="100"
                                    SetFocusOnError="True" Type="Currency"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox6"
                                    Display="Dynamic" ErrorMessage="Enter the Rate" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("rate") %>'></asp:TextBox>&nbsp;
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox6"
                                    Display="Dynamic" ErrorMessage="Enter the correct rate" MaximumValue="1500" MinimumValue="100"
                                    SetFocusOnError="True" Type="Currency"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox6"
                                    Display="Dynamic" ErrorMessage="Enter the Rate" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("rate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="bus ID" SortExpression="busId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("busId") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox7"
                                    Display="Dynamic" ErrorMessage="Enter the Bus ID " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("busId") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox7"
                                    Display="Dynamic" ErrorMessage="Enter the Bus ID " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("busId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Vacant seats" SortExpression="NoOfPassengers">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("NoOfPassengers") %>'></asp:TextBox>&nbsp;
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox8"
                                    Display="Dynamic" ErrorMessage="Enter the correct No" MaximumValue="75" MinimumValue="25"
                                    SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox8"
                                    Display="Dynamic" ErrorMessage="Enter the vacant seats" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("NoOfPassengers") %>'></asp:TextBox>&nbsp;
                                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox8"
                                    ErrorMessage="Enter the correct No" MaximumValue="75" MinimumValue="25" SetFocusOnError="True"
                                    Type="Integer"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox8"
                                    Display="Dynamic" ErrorMessage="Enter the vacant seats" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("NoOfPassengers") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="schedule ID" InsertVisible="False" SortExpression="scId">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("scId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("scId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    DeleteCommand="DELETE FROM [schedule] WHERE [scId] = @scId" InsertCommand="INSERT INTO [schedule] ([depaturePlace], [ArivalPlace], [dDate], [dTime], [aDate], [rate], [busId], [NoOfPassengers]) VALUES (@depaturePlace, @ArivalPlace, @dDate, @dTime, @aDate, @rate, @busId, @NoOfPassengers)"
                    SelectCommand="SELECT * FROM [schedule]" UpdateCommand="UPDATE [schedule] SET [depaturePlace] = @depaturePlace, [ArivalPlace] = @ArivalPlace, [dDate] = @dDate, [dTime] = @dTime, [aDate] = @aDate, [rate] = @rate, [busId] = @busId, [NoOfPassengers] = @NoOfPassengers WHERE [scId] = @scId">
                    <DeleteParameters>
                        <asp:Parameter Name="scId" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="depaturePlace" Type="String" />
                        <asp:Parameter Name="ArivalPlace" Type="String" />
                        <asp:Parameter Name="dDate" Type="DateTime" />
                        <asp:Parameter Name="dTime" Type="DateTime" />
                        <asp:Parameter Name="aDate" Type="DateTime" />
                        <asp:Parameter Name="rate" Type="Decimal" />
                        <asp:Parameter Name="busId" Type="Int32" />
                        <asp:Parameter Name="NoOfPassengers" Type="Byte" />
                        <asp:Parameter Name="scId" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="depaturePlace" Type="String" />
                        <asp:Parameter Name="ArivalPlace" Type="String" />
                        <asp:Parameter Name="dDate" Type="DateTime" />
                        <asp:Parameter Name="dTime" Type="DateTime" />
                        <asp:Parameter Name="aDate" Type="DateTime" />
                        <asp:Parameter Name="rate" Type="Decimal" />
                        <asp:Parameter Name="busId" Type="Int32" />
                        <asp:Parameter Name="NoOfPassengers" Type="Byte" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 635px; background-color: inactivecaptiontext;" rowspan="7">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

