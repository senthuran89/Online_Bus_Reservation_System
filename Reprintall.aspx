<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reprintall.aspx.cs" Inherits="Reprintall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 656px">
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pId"
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:TemplateField SortExpression="FName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/g12-c98-bus-minibus-tours.jpg"
                                        Width="40px" />&nbsp;
                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="@Arial Unicode MS"
                                        Font-Size="11pt" ForeColor="#330099" Text="SAJEE ONLINE PASSENGER TRANSPORTATION RESERVATION"
                                        Width="304px" style="text-align: center"></asp:Label><br />
                                    <br />
                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="@Arial Unicode MS"
                                        Font-Size="8pt" ForeColor="#330099" Text="TP No - 0213734134"></asp:Label>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="@Arial Unicode MS"
                                        Font-Size="8pt" ForeColor="#330099" Text="E-mail - sajee@tickettravela.com"></asp:Label><br />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label22" runat="server" ForeColor="#330099" Text="Passenger ID:" Font-Size="10pt"></asp:Label>
                                    &nbsp; <asp:Label ID="Label12" runat="server" ForeColor="#330099"
                                        Text='<%# Bind("pId") %>' Font-Size="10pt"></asp:Label>&nbsp; &nbsp;<asp:Label ID="Label21" runat="server" ForeColor="#330099" Text="Reservation ID:" Font-Size="10pt"></asp:Label>
                                    &nbsp; 
                                    <asp:Label ID="Label4" runat="server" ForeColor="#330099" Text='<%# Bind("RID") %>' Font-Size="10pt"></asp:Label>&nbsp; &nbsp;<asp:Label ID="Label23" runat="server" ForeColor="#330099" Text="Bus No:" Font-Size="10pt"></asp:Label>
                                    <asp:Label ID="Label20" runat="server" Font-Size="10pt" ForeColor="#330099" Text='<%# Bind("RegNo") %>'></asp:Label>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    <br />
                                    <asp:Label ID="Label13" runat="server" Font-Names="@Arial Unicode MS" Font-Size="10pt"
                                        ForeColor="#330099" Text="Full name:"></asp:Label>
                                    &nbsp; &nbsp; &nbsp;
                                    <asp:Label ID="Label3" runat="server" ForeColor="#330099" Text='<%# Bind("Title") %>' Font-Size="10pt"></asp:Label>
                                    <asp:Label ID="Label1" runat="server" ForeColor="#330099" Text='<%# Bind("FName") %>' Font-Size="10pt"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" ForeColor="#330099" Text='<%# Bind("LName") %>' Font-Size="10pt"></asp:Label><br />
                                    <asp:Label ID="Label17" runat="server" ForeColor="#330099" Text="Depature:" Font-Size="10pt"></asp:Label>
                                    &nbsp; &nbsp; &nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" ForeColor="#330099" Text='<%# Bind("depaturePlace") %>' Font-Size="10pt"></asp:Label><br />
                                    <asp:Label ID="Label18" runat="server" ForeColor="#330099" Text="Arrival:" Font-Size="10pt"></asp:Label>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" ForeColor="#330099" Text='<%# Bind("ArivalPlace") %>' Font-Size="10pt"></asp:Label><br />
                                    <asp:Label ID="Label19" runat="server" ForeColor="#330099" Text="Date & Time:" Font-Size="10pt"></asp:Label>&nbsp;
                                    <asp:Label ID="Label9" runat="server" ForeColor="#330099" Text='<%# Bind("dDate", "{0:d}") %>' Font-Size="10pt"></asp:Label>
                                    <asp:Label ID="Label10" runat="server" ForeColor="#330099" Text='<%# Bind("dTime", "{0:t}") %>' Font-Size="10pt"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;<br />
                                    &nbsp;
                                    <br />
                                    &nbsp;&nbsp;
                                    <br />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp;<asp:Label ID="Label25" runat="server" Font-Bold="True"
                                        Font-Names="@Arial Unicode MS" Font-Size="9pt" ForeColor="#330099" Text="Thank You... come again..."></asp:Label><br />
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
                                    <asp:Label ID="Label20" runat="server" Text='<%# Bind("RegNo") %>'></asp:Label>
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
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#330099" OnClick="Button1_Click"
                        Text="Cancel" /></td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
