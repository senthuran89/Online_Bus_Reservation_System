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
using System.Data.SqlClient;



public partial class Reservation : System.Web.UI.Page
{
    string CustID;
    SqlDataReader dr;
    int noOfSeats = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.MessageLabel = "Enter your Credit card no and NIC no then you can get your Details and then Book now"; 
        DateTime dt1, dt2;
        decimal rate = 0;
        Label2.Text = Session ["scid"].ToString ();
        Label4.Text = Session ["rate"].ToString ();
        Label12.Text = string.Format("{0:d}", Session["ddate"]);
       
        //Label13.Text = Session["Rid"].ToString();
        //SqlConnection con = DataAccess.GetBusReservationConnection();
        //SqlCommand com = new SqlCommand("Select dDate, dTime, rate from Schedule where ScId = " + int.Parse(Label2 .Text.ToString () ) );
        //com.CommandType = CommandType.Text ;
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    //{
    //    int i = DataAccess.addPassenger(TextBox8.Text.ToString(), TextBox9.Text.ToString(), DropDownList2.SelectedValue.ToString(), TextBox10.ToString(), TextBox11.Text.ToString(),TextBox13.Text.ToString(), TextBox14.Text.ToString(),0,int.Parse(Label13.Text.ToString()),TextBox7.Text.ToString());
    //        Label24 .Text = i.ToString ();
    //    foreach (Control C in Panel1 .Controls )
    //    {
    //        try
    //        {
    //            TextBox t = (TextBox)C;
    //            t.Text = "";
    //        }
    //        catch
    //        {

    //        }
    //    }
    //}
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        int CID = 0;
        SqlDataReader dr = DataAccess.GetCustomer(TextBox7.Text.ToString(),TextBox6.Text.ToString());
        while (dr.Read())
        {
            TextBox1.Text = dr.GetSqlString(0).Value;
            TextBox2.Text = dr.GetSqlString(1).Value;
            TextBox3.Text = dr.GetSqlString(3).Value;
            TextBox4.Text = dr.GetSqlString(4).Value;
            TextBox5.Text = dr.GetSqlString(5).Value;
            CustID = dr.GetInt32(12).ToString();
        }
        dr.Close();
        int i = int.Parse(TextBox12.Text.ToString());
        //Panel1.Visible = false;
        DateTime dt = DateTime.Parse(Label12.Text.ToString());
        CID = DataAccess.BookPassenger(TextBox6.Text.ToString(),int.Parse(TextBox12.Text.ToString()), dt, TextBox7.Text.ToString(), int.Parse(Label2.Text.ToString()), decimal.Parse(Label4.Text.ToString()));
        Master.MessageLabel = CID.ToString();

      if (ListBox1.Text == "yes")
        {
            int passengerID = DataAccess.addPassenger(TextBox1.Text.ToString(),TextBox2.Text.ToString(), DropDownList1.SelectedValue.ToString(), TextBox6.Text.ToString(), TextBox3.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), 0,TextBox7.Text.ToString(),int.Parse(Label2.Text.ToString()),CID ) ;
            
            noOfSeats = noOfSeats + 1;
   
         

            Master.MessageLabel = noOfSeats.ToString() + " Seat(s) booked";
           
        }
        Session["CreditCardNo"] = TextBox7.Text.ToString();
        Session["RID"] =CID ; 
        
        
    }
protected void  Button3_Click(object sender, EventArgs e)
{

}
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("AddPassengers.aspx");

    }
}
        
    
 