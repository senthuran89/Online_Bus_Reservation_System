using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class cancel_a_passenger : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.MessageLabel="If you want to cancel a Passenger,Enter the Reservation ID & creditcard No,search the details of the particular passenger and click select";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    //protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    //{
    //    Session["RID"] = GridView1.SelectedRow.Cells[9].Text.ToString();
    //    Session["PID"] = GridView1.SelectedRow.Cells[12].Text.ToString();
    //    Response.Redirect("cancel1redirect.aspx");
    //}
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cancellation.aspx");
    }
    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {
        Session["RID"] = GridView1.SelectedRow.Cells[9].Text.ToString();
        Session["PID"] = GridView1.SelectedRow.Cells[12].Text.ToString();
        Response.Redirect("cancel1redirect.aspx");
    }
}
