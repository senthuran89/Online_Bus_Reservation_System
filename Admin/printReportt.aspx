<%@ Page Language="C#" AutoEventWireup="true" CodeFile="printReportt.aspx.cs" Inherits="Admin_printReportt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 548px">
            <tr>
                <td colspan="3" style="height: 202px">
                    &nbsp; &nbsp;
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataKeyNames="pId,Expr1"
                        DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                            <asp:BoundField DataField="LName" HeaderText="Last Name" SortExpression="LName" />
                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                            <asp:BoundField DataField="NicNo" HeaderText="NicNo" SortExpression="NicNo" />
                            <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:BoundField DataField="RID" HeaderText="Reservation ID" SortExpression="RID" />
                            <asp:BoundField DataField="ScId" HeaderText="ScheduleId" SortExpression="ScId" />
                            <asp:BoundField DataField="pId" HeaderText="Passenger ID" InsertVisible="False" ReadOnly="True"
                                SortExpression="pId" />
                            <asp:BoundField DataField="CustID" HeaderText="Customer ID" SortExpression="CustID" />
                            <asp:BoundField DataField="dDate" HtmlEncode="False" DataFormatString="{0:d}" HeaderText="Depature date"
                                SortExpression="dDate" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BusReservationConnectionString %>"
                        SelectCommand="SELECT * FROM [Report] WHERE (([ScId] = @ScId) AND ([Status] = @Status))">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="4" Name="ScId" SessionField="ScId" Type="Int32" />
                            <asp:SessionParameter DefaultValue="true" Name="Status" SessionField="Status" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
