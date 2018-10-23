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

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.MessageLabel = "Select Departure, Destination and Date here and Click";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Reservation.aspx?ScID=" + GridView1.SelectedDataKey.Value);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["scid"] = GridView1.SelectedRow.Cells [8].Text.ToString();
        Session["Rate"] = GridView1.SelectedRow.Cells[5].Text.ToString();
        Session["ddate"] = GridView1.SelectedRow.Cells[2].Text.ToString();
        Response.Redirect("Reservation.aspx?ScID=" + GridView1.SelectedDataKey.Value);
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        int newRow = e.NewSelectedIndex;
        if (int.Parse(GridView1.Rows [newRow].Cells[7].Text .ToString()) < 1)
        {
            
            e.Cancel = true;
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}
