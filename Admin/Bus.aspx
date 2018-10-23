<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bus.aspx.cs" Inherits="Bus" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 752px; height: 448px; color: #330099; background-color: inactivecaptiontext;">
        <tr>
            <td style="width: 573px">
                <asp:LinkButton
                    ID="LinkButton4" runat="server" BackColor="#FFFFFF" Font-Bold="True"
                    Font-Size="11pt" Font-Underline="False" ForeColor="#330099" PostBackUrl="~/Admin/incomeDetails.aspx" style="text-align: center" OnClick="LinkButton4_Click" Height="8px" BorderColor="Navy" BorderWidth="1px">IncomeDetails</asp:LinkButton>
                <asp:LinkButton
                        ID="LinkButton5" runat="server" BackColor="#FFFFFF" Font-Bold="True"
                        Font-Size="11pt" Font-Underline="False" ForeColor="#330099" PostBackUrl="~/Admin/ReserversionDetails.aspx" Height="16px" Width="144px" style="text-align: center" BorderColor="Navy" BorderWidth="1px">ReservationDetails</asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/Scedule.aspx" BackColor="White" ForeColor="#330099" Font-Bold="True" Font-Size="11pt" Font-Underline="False" Height="16px" Width="80px" style="text-align: center" BorderColor="Navy" BorderWidth="1px">Scheduling</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Admin/Credit Bank.aspx" BackColor="#FFFFFF" ForeColor="#330099" Font-Bold="True" Font-Size="11pt" Font-Underline="False" Height="16px" style="text-align: center" BorderColor="Navy" BorderWidth="1px">CreditBank</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Admin/Bus.aspx" BackColor="#FFFFFF" ForeColor="#330099" Font-Bold="True" Font-Size="11pt" Font-Underline="False" Height="16px" Width="72px" style="text-align: center" BorderWidth="1px">BusDetails</asp:LinkButton>
                <asp:LinkButton
                    ID="LinkButton6" runat="server" BackColor="#FFFFFF" Font-Bold="True"
                    Font-Size="11pt" Font-Underline="False" ForeColor="#330099" Height="16px" Width="56px" PostBackUrl="~/Admin/Report.aspx" style="text-align: center" BorderWidth="1px">Report</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 573px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; 
                <asp:Label ID="Label10" runat="server" BackColor="#330099" Font-Bold="True" Font-Size="12pt"
                    ForeColor="White" Style="text-align: center" Text="Bus Details" Width="104px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 573px; height: 118px; background-color: inactivecaptiontext; color: #330099;" valign="top">
                &nbsp;&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
                    DataKeyNames="busId" DataSourceID="SqlDataSource1" Height="96px" Width="480px" style="color: #330099; background-color: inactivecaptiontext" Font-Bold="True" ForeColor="#330099" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                    <Fields>
                        <asp:TemplateField HeaderText="Registration No" SortExpression="RegNo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RegNo") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    Display="Dynamic" ErrorMessage="Enter the Registration no " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RegNo") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                                    Display="Dynamic" ErrorMessage="Enter the Registration no " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("RegNo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Type Of Bus" SortExpression="typeOfBus">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("typeOfBus") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                                    Display="Dynamic" ErrorMessage="Enter the Type of bus " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("typeOfBus") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2"
                                    Display="Dynamic" ErrorMessage="Enter the Type of bus " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("typeOfBus") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="No Of Seat" SortExpression="noOfSeat">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("noOfSeat") %>'></asp:TextBox>&nbsp;
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3"
                                    Display="Dynamic" ErrorMessage="Enter the correct No" MaximumValue="75" MinimumValue="25"
                                    SetFocusOnError="True" Type="Integer" Height="16px"></asp:RangeValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("noOfSeat") %>'></asp:TextBox>&nbsp;
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3"
                                    Display="Dynamic" ErrorMessage="Enter the correct No" SetFocusOnError="True"
                                    Type="Integer" MaximumValue="75" MinimumValue="25"></asp:RangeValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("noOfSeat") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Owner ID" SortExpression="OwnerID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("OwnerID") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4"
                                    Display="Dynamic" ErrorMessage="Enter the Owner ID " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("OwnerID") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4"
                                    Display="Dynamic" ErrorMessage="Enter the owner ID" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("OwnerID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="bus ID" InsertVisible="False" SortExpression="busId">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("busId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("busId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                &nbsp; &nbsp;&nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    DeleteCommand="DELETE FROM [Bus] WHERE [busId] = @busId" InsertCommand="INSERT INTO [Bus] ([RegNo], [typeOfBus], [noOfSeat], [OwnerID]) VALUES (@RegNo, @typeOfBus, @noOfSeat, @OwnerID)"
                    SelectCommand="SELECT * FROM [Bus]" UpdateCommand="UPDATE [Bus] SET [RegNo] = @RegNo, [typeOfBus] = @typeOfBus, [noOfSeat] = @noOfSeat, [OwnerID] = @OwnerID WHERE [busId] = @busId">
                    <DeleteParameters>
                        <asp:Parameter Name="busId" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RegNo" Type="String" />
                        <asp:Parameter Name="typeOfBus" Type="String" />
                        <asp:Parameter Name="noOfSeat" Type="Byte" />
                        <asp:Parameter Name="OwnerID" Type="Int32" />
                        <asp:Parameter Name="busId" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="RegNo" Type="String" />
                        <asp:Parameter Name="typeOfBus" Type="String" />
                        <asp:Parameter Name="noOfSeat" Type="Byte" />
                        <asp:Parameter Name="OwnerID" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

