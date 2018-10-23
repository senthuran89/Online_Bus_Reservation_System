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

public partial class Admin_Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.MessageLabel = "Get the report of a paticular trip";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("printReportt.aspx");
       // Session["RegNo"] = TextBox1.Text.ToString();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["RegNo"] = GridView1.SelectedRow.Cells[0].Text.ToString();
    }
}
