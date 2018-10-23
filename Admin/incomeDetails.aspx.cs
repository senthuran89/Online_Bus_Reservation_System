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

public partial class Admin_incomeDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.MessageLabel="Enter the date or Registration no and view the wanted Details";
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
