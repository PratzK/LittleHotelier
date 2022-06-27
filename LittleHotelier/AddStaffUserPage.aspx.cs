using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Work on Alert Function!!!!!!!!

namespace LilHotelier
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Add User Event
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Not sure if this is working?!?!???!?!???? CHECK IT OUT
            if (checkExistingUserID() == true)
            {
                


            }

            else
            {
                addNewUser();
            }
            

        }

        //User Defined Methods

        //Check if User ID Already Exists
        bool checkExistingUserID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Admin_User_Table where UserID='" + TxtUserID.Text.Trim() + "';", con);

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

                

                //Response.Write("<script> alert('User Added Successfully');</script>");
            }
            catch (Exception ex)
            {
                //Response.Write("<script> alert('" + ex.Message + "');</script>");
                UserExists.Visible = true;
                UserExists.Text = "User ID Already Exists. Try Another!";
                return false;
            }

        }

        //Add New User
        void addNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into User_Login_Table(FirstName,LastName,UserID,Password) values(@FirstName,@LastName,@UserID,@Password)", con);
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", LastName.Text.Trim());
                cmd.Parameters.AddWithValue("@UserID", TxtUserID.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
                

                cmd.ExecuteNonQuery();
                con.Close();
                //Work on Alert Function!!!!!!!!
                Response.Write("<scrpit>alert('User Added');</script>");
            }
            catch (Exception ex)
            {
                //Response.Write("<scrpit>alert('" + ex.Message + "');</script>");
            }
        }
        //Search User Event
        protected void SearchUser_Click(object sender, EventArgs e)
        {
            

        }

    }
}