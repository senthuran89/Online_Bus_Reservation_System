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

public partial class Reschedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = Session["RID"].ToString();
      
        Label8.Text = Session["scid"].ToString();
        Label9.Text = Session["dDate"].ToString();
        Master.MessageLabel = "Make reschedule your ticket...";
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label1.Visible = true;
    
        DateTime dt = DateTime.Parse(Label9.Text.ToString());

        DataAccess.EditReservation(dt,int.Parse(Label8.Text.ToString()), int.Parse(Label4.Text.ToString()));
        Label1.Text = ("Your Reservation is Rescheduled");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reprintall.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}
