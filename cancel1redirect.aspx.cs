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

public partial class cancel1redirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.MessageLabel="Now you have got the selected passenger details. if you are sure to cancel,just confirm your cancellation";
        Label3.Text = Session["RID"].ToString();
        Label4.Text = Session["PID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
   
        DataAccess.cancelpassenger(int.Parse(Label4.Text.ToString()),int.Parse(Label3.Text.ToString()));
Label5.Text=("Your Reservation is cancelled");
Label5.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cancellation.aspx");
    }
}
