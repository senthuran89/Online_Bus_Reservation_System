<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Credit Bank.aspx.cs" Inherits="Credit_Bank" Title="Untitled Page" %>
<%@MasterType VirtualPath ="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<table style="width: 696px;
        height: 83px">
        <tr>
            <td style="width: 808px; height: 21px;">
                <asp:LinkButton ID="LinkButton4" runat="server" BackColor="#FFFFFF" BorderWidth="1px"
                    Font-Bold="True" Font-Underline="False" ForeColor="#330099" PostBackUrl="~/Admin/incomeDetails.aspx">Income Details</asp:LinkButton>
                <asp:LinkButton ID="LinkButton8" runat="server" BackColor="#FFFFFF" BorderColor="Navy"
                    BorderWidth="1px" Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/ReserversionDetails.aspx" Style="text-align: center"
                    Width="144px">ReservationDetails</asp:LinkButton>
                <asp:LinkButton ID="LinkButton9" runat="server" BackColor="White" BorderColor="Navy"
                    BorderWidth="1px" Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/Scedule.aspx" Style="text-align: center" Width="80px">Scheduling</asp:LinkButton>
                <asp:LinkButton ID="LinkButton10" runat="server" BackColor="#FFFFFF" BorderColor="Navy"
                    BorderWidth="1px" Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/Credit Bank.aspx" Style="text-align: center">CreditBank</asp:LinkButton>
                <asp:LinkButton ID="LinkButton11" runat="server" BackColor="#FFFFFF" BorderWidth="1px"
                    Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/Bus.aspx" Style="text-align: center" Width="72px">BusDetails</asp:LinkButton>
                <asp:LinkButton ID="LinkButton12" runat="server" BackColor="#FFFFFF" BorderWidth="1px"
                    Font-Bold="True" Font-Size="11pt" Font-Underline="False" ForeColor="#330099"
                    Height="16px" PostBackUrl="~/Admin/Report.aspx" Style="text-align: center" Width="56px">Report</asp:LinkButton>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 808px; height: 21px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="Label10" runat="server" BackColor="#330099" Font-Bold="True" Font-Size="12pt"
                    ForeColor="White" Style="text-align: center" Text="Credit bank" Width="104px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 808px">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" DataKeyNames="creditcardno" DataSourceID="SqlDataSource1" Height="62px" Width="520px" OnPageIndexChanging="DetailsView1_PageIndexChanging" style="background-color: inactivecaptiontext" Font-Bold="True" AutoGenerateRows="False">
                    <Fields>
                        <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    Display="Dynamic" ErrorMessage="Enter the First name " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                                    Display="Dynamic" ErrorMessage="Enter the First name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                                    Display="Dynamic" ErrorMessage="Enter the Last name" SetFocusOnError="True" ForeColor="White"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2"
                                    Display="Dynamic" ErrorMessage="Enter the Last name " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nic No" SortExpression="NicNo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("NicNo") %>'></asp:TextBox>&nbsp;
                                <asp:CustomValidator ID="CustomValidator3" runat="server" Display="Dynamic" ErrorMessage="Invalid NIC No"
                                    SetFocusOnError="True" ValidateEmptyText="True"></asp:CustomValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox3"
                                    Display="Dynamic" ErrorMessage="Enter the NIC no" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("NicNo") %>'></asp:TextBox>&nbsp;
                                <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox3"
                                    Display="Dynamic" ErrorMessage="Invalid NIC No" OnServerValidate="SecurityCodeCustomValidator_ServerValidate2"
                                    SetFocusOnError="True" ValidateEmptyText="True"></asp:CustomValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox3"
                                    Display="Dynamic" ErrorMessage="Enter the NIC No" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("NicNo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address (line1)" SortExpression="Add1">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Add1") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4"
                                    Display="Dynamic" ErrorMessage="Enter the Address " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Add1") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4"
                                    Display="Dynamic" ErrorMessage="Enter the Address " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Add1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address(line2)" SortExpression="Add2">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Add2") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5"
                                    Display="Dynamic" ErrorMessage="Enter the Address " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Add2") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox5"
                                    Display="Dynamic" ErrorMessage="Enter the Address " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Add2") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>&nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>&nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>&nbsp;
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>&nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="E _ Mail" SortExpression="eMail">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("eMail") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8"
                                    Display="Dynamic" ErrorMessage="Enter the E-mail ID " SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("eMail") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox8"
                                    Display="Dynamic" ErrorMessage="Enter the E-mail ID " SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("eMail") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="expiry date" SortExpression="expirydate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("expirydate") %>'></asp:TextBox>&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox10"
                                    Display="Dynamic" ErrorMessage=" Enter the Expiry date" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("expirydate", "{0:d}") %>'></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox10"
                                    Display="Dynamic" ErrorMessage=" Enter the Expiry date" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("expirydate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Type" SortExpression="type">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox11"
                                    Display="Dynamic" ErrorMessage="Enter the Type " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox11"
                                    Display="Dynamic" ErrorMessage="Enter the Type " SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="balance" SortExpression="balance">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("balance") %>'></asp:TextBox>&nbsp;
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox9"
                                    Display="Dynamic" ErrorMessage="Enter the correct ammount" MaximumValue="10000000000000"
                                    MinimumValue="0" SetFocusOnError="True" Type="Currency"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                                    ErrorMessage="Enter the balance" SetFocusOnError="True" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("balance", "{0:f2}") %>'></asp:TextBox>&nbsp;
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox9"
                                    Display="Dynamic" ErrorMessage="Enter the correct ammount" MaximumValue="10000000000000"
                                    MinimumValue="0" SetFocusOnError="True" Type="Currency"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9"
                                    Display="Dynamic" ErrorMessage="Enter the balance" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("balance", "{0:f2}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="credit card no" SortExpression="creditcardno">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("creditcardno") %>'></asp:Label>&nbsp;
                                <asp:CustomValidator ID="CustomValidator2" runat="server" Display="Dynamic" ErrorMessage="Invalid creditcard No"
                                    OnServerValidate="SecurityCodeCustomValidator_ServerValidate1" SetFocusOnError="True"
                                    ValidateEmptyText="True"></asp:CustomValidator>
                                
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("creditcardno") %>'></asp:TextBox>&nbsp;
                                <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Invalid Creditcard No"
                                    OnServerValidate="SecurityCodeCustomValidator_ServerValidate" ControlToValidate="TextBox12" SetFocusOnError="True" ValidateEmptyText="True"></asp:CustomValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox12"
                                    Display="Dynamic" ErrorMessage="Enter the credit card no" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("creditcardno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer ID" InsertVisible="False" SortExpression="CustomerID">
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("CustomerID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                    DeleteCommand="DELETE FROM [creditcard] WHERE [creditcardno] = @creditcardno"
                    InsertCommand="INSERT INTO [creditcard] ([FirstName], [LastName], [NicNo], [Add1], [Add2], [Phone], [Mobile], [eMail], [balance], [expirydate], [type], [creditcardno]) VALUES (@FirstName, @LastName, @NicNo, @Add1, @Add2, @Phone, @Mobile, @eMail, @balance, @expirydate, @type, @creditcardno)"
                    SelectCommand="SELECT * FROM [creditcard]" UpdateCommand="UPDATE [creditcard] SET [FirstName] = @FirstName, [LastName] = @LastName, [NicNo] = @NicNo, [Add1] = @Add1, [Add2] = @Add2, [Phone] = @Phone, [Mobile] = @Mobile, [eMail] = @eMail, [balance] = @balance, [expirydate] = @expirydate, [type] = @type WHERE [creditcardno] = @creditcardno">
                    <DeleteParameters>
                        <asp:Parameter Name="creditcardno" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="NicNo" Type="String" />
                        <asp:Parameter Name="Add1" Type="String" />
                        <asp:Parameter Name="Add2" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="eMail" Type="String" />
                        <asp:Parameter Name="balance" Type="Decimal" />
                        <asp:Parameter Name="expirydate" Type="DateTime" />
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="CustomerID" Type="Int32"  />
                        <asp:Parameter Name="creditcardno" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="NicNo" Type="String" />
                        <asp:Parameter Name="Add1" Type="String" />
                        <asp:Parameter Name="Add2" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="eMail" Type="String" />
                        <asp:Parameter Name="balance" Type="Decimal" />
                        <asp:Parameter Name="expirydate" Type="DateTime" />
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="creditcardno" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</asp:Content>

