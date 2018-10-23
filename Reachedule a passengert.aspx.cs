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

public partial class Reachedule_a_passengert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Session["RID"].ToString();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Session["RID"] = GridView1.SelectedRow.Cells[8].Text.ToString();
        Session["PID"] = GridView1.SelectedRow.Cells[10].Text.ToString();
       
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["dDate"] = GridView2.SelectedRow.Cells[2].Text.ToString();
        Session["SCID"] = GridView2.SelectedRow.Cells[8].Text.ToString();
        Response.Redirect("Reschedule1redirect.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("SearchReschedule.aspx");
    }
}
