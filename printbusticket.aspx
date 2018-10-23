<%@ Page Language="C#" AutoEventWireup="true" CodeFile="printbusticket.aspx.cs" Inherits="printbusticket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 531px">
            <tr>
                <td colspan="3" valign="top">
                    &nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" Width="504px">
                        <Columns>
                            <asp:TemplateField SortExpression="FName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    &nbsp;<asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/g12-c98-bus-minibus-tours.jpg"
                                        Width="48px" />
                                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="@Arial Unicode MS"
                                        Font-Size="10pt" ForeColor="#330099" Text="SAJEE ONLINE PASSENGER TRANSPORTATION RESERVATION " style="text-align: center" Height="40px" Width="296px"></asp:Label><br />
                                    <br />
                                    &nbsp;<asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Arial Unicode MS"
                                        Font-Size="8pt" ForeColor="#330099" Text="TP No - 0213734134"></asp:Label>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label24" runat="server"
                                        Font-Bold="True" Font-Names="Arial Unicode MS" Font-Size="8pt" ForeColor="#330099"
                                        Text="E-mail - sajee@tickettravela.com"></asp:Label><br />
                                    <br />
                                    <asp:Label ID="Label16" runat="server" Text="Passenger ID:" Font-Bold="False" Font-Size="10pt" ForeColor="#330099" Width="80px"></asp:Label>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("pId") %>' Font-Size="10pt" ForeColor="#330099" Width="1px"></asp:Label>
                                    &nbsp; &nbsp;&nbsp; <asp:Label ID="Label13" runat="server" Text="Reservation ID:" Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label>&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("RID") %>' Font-Bold="False" Font-Size="10pt" ForeColor="#330099" Width="1px"></asp:Label>
                                    &nbsp; &nbsp; 
                                    <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="#330099"
                                        Text="Bus No:"></asp:Label>
                                    <asp:Label ID="Label14" runat="server" ForeColor="#330099" Text='<%# Bind("RegNo") %>' Width="64px"></asp:Label>
                                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                                    <asp:Label ID="Label21" runat="server" Text="Full name:" Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label>
                                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Bind("Title") %>' Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FName") %>' Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("LName") %>' Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label><br />
                                    <asp:Label ID="Label18" runat="server" Text="Depature:" Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label>
                                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Bind("depaturePlace") %>' Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label><br />
                                    <asp:Label ID="Label19" runat="server" Text="Arrival:" Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:Label ID="Label8" runat="server" Text='<%# Bind("ArivalPlace") %>' Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label><br />
                                    <asp:Label ID="Label20" runat="server" Text="Date & Time:" Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label>&nbsp;&nbsp;
                                    &nbsp; &nbsp;
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("dDate", "{0:d}") %>' Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("dTime", "{0:t}") %>' Font-Bold="False" Font-Size="10pt" ForeColor="#330099"></asp:Label><br />
                                    &nbsp;&nbsp;&nbsp;<br />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp;<asp:Label ID="Label23" runat="server"
                                        Font-Bold="True" Font-Names="@Arial Unicode MS" Font-Size="9pt" ForeColor="#330099"
                                        Text="Thank You... come again..."></asp:Label>
                                    &nbsp;&nbsp;
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="LName" SortExpression="LName" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("LName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Title" SortExpression="Title" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="RID" SortExpression="RID" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("RID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("RID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CustID" SortExpression="CustID" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CustID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CustID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ScId" SortExpression="ScId" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ScId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("ScId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="depaturePlace" SortExpression="depaturePlace" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("depaturePlace") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("depaturePlace") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ArivalPlace" SortExpression="ArivalPlace" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ArivalPlace") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("ArivalPlace") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="dDate" SortExpression="dDate" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("dDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("dDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="dTime" SortExpression="dTime" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("dTime") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("dTime", "{0:t}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="busId" SortExpression="busId" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("busId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("busId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="pId" InsertVisible="False" SortExpression="pId" Visible="False">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("pId") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("pId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="RegNo" SortExpression="RegNo" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("RegNo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("RegNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                        SelectCommand="SELECT * FROM [Printticket] WHERE ([RID] = @RID)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="RID" SessionField="RID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#330099" OnClick="Button1_Click"
                        Text="Cancel" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
