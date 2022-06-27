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

        void clearForm()
        {
            FirstName.Text = "";
            LastName.Text = "";
            ContactNumber.Text = "";
            EmailId.Text = "";
            Address.Text = "";
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
                CustomerInfoTable.DataBind();
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

                clearForm();
               
            }
            catch (Exception ex)
            {

                //Response.Write("<scrpit>alert('" + ex.Message + "');</script>");
            }
        }




        //Update Customer Info Event
        protected void UpdateInfo_Click(object sender, EventArgs e)
        {
            if (checkExistingContact() == true)
            {
                updateCustomerInfo();
                Response.Write("<script> alert('Customer Info Updated Successfully!');</script>");
                CustomerInfoTable.DataBind();
            }

            else
            {
                Response.Write("<script> alert('Customer not registered.');</script>");
            }
        }
        //user defined update function

        void updateCustomerInfo()

        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update Customer_Info_Table SET FirstName=@FirstName, LastName=@LastName, EmailID=@EmailID, Address=@Address WHERE ContactNumber='" + ContactNumber.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", LastName.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailID", EmailId.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", Address.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();


                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<scrpit>alert('" + ex.Message + "');</script>");
            }
        }



        //Delete Customer Info Event
        protected void DeleteInfo_Click(object sender, EventArgs e)
        {
            if (checkExistingContact() == true)
            {
                deleteCustomer();
                Response.Write("<script> alert('Customer Deleted Successfully!');</script>");
                CustomerInfoTable.DataBind();
            }

            else
            {
                Response.Write("<script> alert('Customer not registered.');</script>");
            }
        }
        //user defined delete funtion
        void deleteCustomer()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from Customer_Info_Table WHERE ContactNumber='" + ContactNumber.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();



                clearForm();
            }
            catch (Exception ex)
            {

            }
        }

        // Search Customer Event
        protected void SearchContact_Click(object sender, EventArgs e)
        {
            searchContact();
        }
        //user defined search function
        void searchContact()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Customer_Info_Table where ContactNumber='" + SearchContactNumber.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    FirstName.Text = dt.Rows[0][0].ToString();
                    LastName.Text = dt.Rows[0][1].ToString();
                    ContactNumber.Text = dt.Rows[0][2].ToString();
                    EmailId.Text = dt.Rows[0][3].ToString();
                    Address.Text = dt.Rows[0][4].ToString();
                }

                else
                {
                    Response.Write("<script> alert('User Does Not Exist.');</script>");
                }

                con.Close();



            }
            catch (Exception ex)
            {



            }
        }
    }
}