using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Credit_Bank : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusReservationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.MessageLabel="Manage the credit card details";
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void SecurityCodeCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        SqlCommand com = new SqlCommand("Select Count(*) from creditcard where creditcardno = '" + args.Value.ToString() + "'", con);
        con.Open();
        int i = int.Parse(com.ExecuteScalar().ToString());
        con.Close();


        if (args.Value.Length == 16)
        {
            int countID = DataAccess.countItems("Select Count(*) from creditcard where creditcardno = '" + args.Value.ToString() + "'");
            if (countID > 0)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        else
        {
            args.IsValid = false;
        }


    }

    protected void SecurityCodeCustomValidator_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        SqlCommand com = new SqlCommand("Select Count(*) from creditcard where creditcardno = '" + args.Value.ToString() + "'", con);
        con.Open();
        int i = int.Parse(com.ExecuteScalar().ToString());
        con.Close();


        if (args.Value.Length == 16)
        {
            int countID = DataAccess.countItems("Select Count(*) from creditcard where creditcardno = '" + args.Value.ToString() + "'");
            if (countID > 0)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        else
        {
            args.IsValid = false;
        }

    }
    protected void SecurityCodeCustomValidator_ServerValidate2(object source, ServerValidateEventArgs args)
    {
       if(args.Value.Length==10)
        {
            args.IsValid = true;
        }
        else
         
                {
                    args.IsValid=false;
                }
               
                   
            }


}


            
        
    


    
    //protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    //{

   // }


