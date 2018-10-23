using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;
/// <summary>
/// Summary description for passenger
/// </summary>
public class DataAccess
{
    public static SqlConnection GetBusReservationConnection()
    {
        // Get the connection string from the configuration file
        string connectionString = ConfigurationManager.ConnectionStrings["BusReservationConnectionString"].ConnectionString;

        // Create a new connection object
        SqlConnection connection = new SqlConnection(connectionString);

        // Open the connection, and return it
        connection.Open();
        return connection;
    }

    public static int BookPassenger(
                             string Nic,
                             int seats,
                             DateTime  Traveldate,
                             string creditcardno,
                             int scid,
                             decimal rate)
                                
    {

        int rowsAffected = 0;
        int reservationid;

        using (SqlConnection connection = DataAccess.GetBusReservationConnection())
        {
            SqlCommand command = new SqlCommand("addReservation", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@NICNo", SqlDbType.Char, 10).Value = Nic;
            command.Parameters.Add("@seats", SqlDbType.SmallInt).Value = seats;
            command.Parameters.Add("@Traveldate", SqlDbType.SmallDateTime).Value = Traveldate;
            command.Parameters.Add("@creditcardno", SqlDbType.Char,16).Value = creditcardno;
            command.Parameters.Add("@scid", SqlDbType.SmallInt).Value = scid;
            command.Parameters.Add("@rate", SqlDbType.SmallMoney).Value = rate;
            command.Parameters.Add("@reservationid", SqlDbType.SmallInt);
            command.Parameters["@reservationid"].Direction = ParameterDirection.Output;
            rowsAffected = command.ExecuteNonQuery();
            reservationid = int.Parse(command.Parameters["@reservationid"].Value.ToString());
        }
        return reservationid;
       
    }


    public static int EditReservation(
                           DateTime TravelDate,
                           int SCIDnew,
                           int RID)
                              
    {
        int rowsAffected = 0;

        using (SqlConnection connection = DataAccess.GetBusReservationConnection())
        {
            SqlCommand command = new SqlCommand("EditReservation", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@TravelDate", SqlDbType.DateTime).Value = TravelDate;
            command.Parameters.Add("@RID", SqlDbType.SmallInt).Value = RID;
            command.Parameters.Add("@SCIDnew", SqlDbType.SmallInt).Value = SCIDnew;
           

            rowsAffected = command.ExecuteNonQuery();
        }
        return rowsAffected;
    }

    
    public static int addPassenger(
                             string FName,
                             string LName,
                             string Title,
                             string NIC,
                             string Address1,
                             string Address2,
                             string TPNo,
                             int status,
                             string crditCardNo,
                             int scID,
                             int RID)
    
    {

        int rowsAffected = 0;
        int passengerID;
        using (SqlConnection connection = DataAccess.GetBusReservationConnection())
        {
            SqlCommand command = new SqlCommand("addPassenger", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@FName", SqlDbType.VarChar, 30).Value = FName;
            command.Parameters.Add("@LName", SqlDbType.VarChar, 30).Value = LName;
            command.Parameters.Add("@Title", SqlDbType.VarChar, 5).Value = Title;
            command.Parameters.Add("@NIC", SqlDbType.Char, 10).Value = NIC;
            command.Parameters.Add("@Address1", SqlDbType.VarChar, 30).Value = Address1;
            command.Parameters.Add("@Address2", SqlDbType.VarChar, 30).Value = Address2;
            command.Parameters.Add("@TPNo", SqlDbType.VarChar, 15).Value = TPNo;
            command.Parameters.Add("@status", SqlDbType.SmallInt).Value = status;
            command.Parameters.Add("@creditCardNo", SqlDbType.Char, 16).Value = crditCardNo;
            command.Parameters.Add("@scID", SqlDbType.Char, 16).Value = scID;

            command.Parameters.Add("@RID", SqlDbType.SmallInt).Value = RID;
            
            command.Parameters.Add("@passengerID", SqlDbType.Int);
            command.Parameters["@passengerID"].Direction = ParameterDirection.Output;
            rowsAffected = command.ExecuteNonQuery();
            passengerID = int.Parse (command .Parameters ["@passengerID"].Value.ToString () );
        }
        return passengerID;
    }

    public static int addOtherPassenger(
                         string FName,
                         string LName,
                         string Title,
                         string NIC,
                         string Address1,
                         string Address2,
                         string TPNo,
                         int status,
                         int RID,
                         int CustID)
    {

        int rowsAffected = 0;
        int passengerID;
        using (SqlConnection connection = DataAccess.GetBusReservationConnection())
        {
            SqlCommand command = new SqlCommand("addOtherPassenger", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@FName", SqlDbType.VarChar, 30).Value = FName;
            command.Parameters.Add("@LName", SqlDbType.VarChar, 30).Value = LName;
            command.Parameters.Add("@Title", SqlDbType.VarChar, 5).Value = Title;
            command.Parameters.Add("@NIC", SqlDbType.Char, 10).Value = NIC;
            command.Parameters.Add("@Address1", SqlDbType.VarChar, 30).Value = Address1;
            command.Parameters.Add("@Address2", SqlDbType.VarChar, 30).Value = Address2;
            command.Parameters.Add("@TPNo", SqlDbType.VarChar, 15).Value = TPNo;
            command.Parameters.Add("@status", SqlDbType.SmallInt).Value = status;
            command.Parameters.Add("@RID", SqlDbType.SmallInt).Value = RID;
            command.Parameters.Add("@custID", SqlDbType.SmallInt).Value = CustID;
            command.Parameters.Add("@passengerID", SqlDbType.Int);
            command.Parameters["@passengerID"].Direction = ParameterDirection.Output;
            rowsAffected = command.ExecuteNonQuery();
            passengerID = int.Parse(command.Parameters["@passengerID"].Value.ToString());
        }
        return passengerID;
    }
    
    public static SqlDataReader GetCustomer(string creditCard, string NicNo)
    {
        string sql = "SELECT * FROM creditcard where creditcardno='" + creditCard + "' and NICNo='" + NicNo+"'";

        SqlConnection connection = DataAccess.GetBusReservationConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static int CancelReservation(
                       
                        int RID)
    {

        int rowsAffected = 0;
       // int passengerID;
        using (SqlConnection connection = DataAccess.GetBusReservationConnection())
        {
            SqlCommand command = new SqlCommand("CancelReservation", connection);
            command.CommandType = CommandType.StoredProcedure;
           
            command.Parameters.Add("@RID", SqlDbType.Int).Value = RID;
           
            
            rowsAffected = command.ExecuteNonQuery();
            
        }
        return rowsAffected;
    }

    public static int confirmpassengers(
                     // DateTime date,
                       int seats,
                       int RID)
    {

        int rowsAffected = 0;
        
        using (SqlConnection connection = DataAccess.GetBusReservationConnection())
        {
            SqlCommand command = new SqlCommand("confirmpassengers", connection);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.Add("@Seats", SqlDbType.SmallInt).Value = seats;
            command.Parameters.Add("@RID", SqlDbType.SmallInt).Value = RID;

            rowsAffected = command.ExecuteNonQuery();

        }
        return rowsAffected;
    }

    public static int cancelpassenger(
 
                        int PID,
                      int RID)
    {

        int rowsAffected = 0;

        using (SqlConnection connection = DataAccess.GetBusReservationConnection())
        {
            SqlCommand command = new SqlCommand("cancelpassenger", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@RID", SqlDbType.SmallInt).Value = RID;
            command.Parameters.Add("@PID", SqlDbType.SmallInt).Value = PID;

            rowsAffected = command.ExecuteNonQuery();

        }
        return rowsAffected;
    }
    
    public static int EditPassenger(
                           DateTime TravelDate,
                           int SCIDnew,
                           int RID)
    {
        int rowsAffected = 0;

        using (SqlConnection connection = DataAccess.GetBusReservationConnection())
        {
            SqlCommand command = new SqlCommand("EditPassenger", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@TravelDate", SqlDbType.DateTime).Value = TravelDate;
            command.Parameters.Add("@RID", SqlDbType.SmallInt).Value = RID;
            command.Parameters.Add("@SCIDnew", SqlDbType.SmallInt).Value = SCIDnew;


            rowsAffected = command.ExecuteNonQuery();
        }
        return rowsAffected;
    }

    public static int countItems(string comText)
    {
        int i = 0;
        using (SqlConnection connection = DataAccess.GetBusReservationConnection())
        {
            SqlCommand command = new SqlCommand(comText, connection);
            i = int.Parse(command.ExecuteScalar().ToString());

        }
        return i;
    }

}

