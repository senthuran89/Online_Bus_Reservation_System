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

public partial class Reschedule1redirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["RID"].ToString();
        Label4.Text = Session["PID"].ToString();
        Label8.Text = Session["dDate"].ToString();
        Label10.Text = Session["SCID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label5.Visible = true;
         DateTime dt = DateTime.Parse(Label8.Text.ToString());
         DataAccess.EditPassenger(dt, int.Parse(Label10.Text.ToString()), int.Parse(Label2.Text.ToString()));
         Label5.Text = ("Your Reservation is Rescheduled");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reprintpassenger.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}
