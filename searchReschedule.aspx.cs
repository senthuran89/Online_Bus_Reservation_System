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

public partial class searchReschedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      Master.MessageLabel = "Make Rescheduling your ticket";
     
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        GridView2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["RID"] = TextBox1.Text.ToString();
        //Session["PID"] = GridView1.SelectedRow.Cells[10].Text.ToString();
        //Response.Redirect("Reschedule.aspx");
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["RID"] = TextBox1.Text.ToString();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["scid"] = GridView2.SelectedRow.Cells[8].Text.ToString();
        Session["dDate"] = GridView2.SelectedRow.Cells[2].Text.ToString();
        Response.Redirect("Reschedule.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["RID"] = TextBox1.Text.ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["RID"] = TextBox1.Text.ToString();
        Response.Redirect("Reachedule a passengert.aspx");
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}
