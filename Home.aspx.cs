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

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.MessageLabel = "WELCOME TO OUR LARGEST PASSENGER TRANSPORTATION ONLINE RESERVATION & E-TICKETING SYSTEM"; 
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {


    }
}
