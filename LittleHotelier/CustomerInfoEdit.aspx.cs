using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LilHotelier
{
    public partial class AdminCustomerInfoEdit : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Add Customer Info Event
        protected void AddInfo_Click(object sender, EventArgs e)
        {
            if (checkExistingContact() == true)
            {
                Label1.Visible = true;
                Label1.Text = "Contact Number Already Registered!";
            }

            else
            {
                addNewCustomer();
                Response.Write("<script> alert('New Customer Added!');</script>");
            }
        }

        // User Defined Function
        //Check if Customer Exists

        bool checkExistingContact()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Customer_Info_Table where ContactNumber='" + ContactNumber.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }

                else
                {
                    return false;
                }

                con.Close();


                
            }
            catch (Exception ex)
            {
               
                return false;
                
            }

        }

        // Add new customer

        void addNewCustomer()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Customer_Info_Table(FirstName,LastName,ContactNumber,EmailID,Address) values(@FirstName,@LastName,@ContactNumber,@EmailID, @Address)", con);
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", LastName.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNumber", ContactNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailID", EmailId.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", Address.Text.Trim());

                

                cmd.ExecuteNonQuery();
                con.Close();
               
            }
            catch (Exception ex)
            {

                //Response.Write("<scrpit>alert('" + ex.Message + "');</script>");
            }
        }




        //Update Customer Info Event
        protected void UpdateInfo_Click(object sender, EventArgs e)
        {

        }
        //Delete Customer Info Event
        protected void DeleteInfo_Click(object sender, EventArgs e)
        {

        }
        // Search Customer Event
        protected void SearchContact_Click(object sender, EventArgs e)
        {

        }
    }
}