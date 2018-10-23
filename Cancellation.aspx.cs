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

public partial class Cancellation : System.Web.UI.Page
{
    int NoOfPassengers=0;
    protected void Page_Load(object sender, EventArgs e)
    {

        Master.MessageLabel = "First choose you are going to cancel the whole Reservation or cancel a passenger only? ";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataAccess.CancelReservation(int.Parse(TextBox1.Text.ToString()));
        Label2.Text = ("Cancelled your Reservation");
        Label2.Visible = true;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
