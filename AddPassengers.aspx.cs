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

public partial class AddPassengers : System.Web.UI.Page
{
    string CreditcardNo;
    int RID;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Text = Session["RID"].ToString();
        Label11.Text = Session["scID"].ToString();
        Master.MessageLabel = "Enter the additional passenger information";
        CreditcardNo = Session["creditcardno"].ToString();
        RID = (int)Session["RID"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        int custID = DataAccess.addPassenger(TextBox1.Text.ToString(), TextBox2.Text.ToString(), DropDownList1.SelectedValue.ToString(), TextBox3.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox6.Text.ToString(), 0, CreditcardNo,int.Parse(Label11.Text.ToString()), RID);
      
           // Label24 .Text = i.ToString ();
          foreach (Control C in Panel1 .Controls )
          {
              try
              {
                   TextBox t = (TextBox)C;
                   t.Text = "";
               }
               catch
               {

               }
           }
           SqlDataSource1.DataBind();
           GridView1.DataBind();
           Label9.Text = GridView1.Rows.Count.ToString();
           Label9.Visible = true;
           Label12.Visible = true;

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //if (args.Value.Length = 10)
        //    args.IsValid = true;
        //else
        //    args.IsValid = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["RID"] = GridView1.SelectedRow.Cells[8].Text.ToString();
        Session["scID"] = GridView1.SelectedRow.Cells[10].Text.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataAccess.confirmpassengers(int.Parse(Label9.Text.ToString()),int.Parse(Label7.Text.ToString()));
        Response.Redirect("Printbusticket.aspx");
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
