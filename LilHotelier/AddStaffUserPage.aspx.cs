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

        void clearForm()
        {
            FirstName.Text = "";
            LastName.Text = "";
            TxtUserID.Text = "";
            UserID.Text = "";
            Password.Text = "";
        }

        //Add New Staff User Event
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Not sure if this is working?!?!???!?!???? CHECK IT OUT
            if (checkExistingUserID() == true)
            {
                UserExists.Visible = true;
                UserExists.Text = "User ID Already Exists. Try Another!";
            }

            else
            {
                addNewUser();
                Response.Write("<script> alert('New Staff Added!');</script>");
                UserInfoTable.DataBind();
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

                SqlCommand cmd = new SqlCommand("select * from User_Login_Table where UserID='" + TxtUserID.Text.Trim() + "';", con);

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
                clearForm();
            }
            catch (Exception ex)
            {
                //Response.Write("<scrpit>alert('" + ex.Message + "');</script>");
            }
        }




        //Update Info Click Event
        protected void UpdateInfo_Click(object sender, EventArgs e)
        {
            if (checkExistingUserID() == true)
            {
                updateStaffInfo();
                Response.Write("<script> alert('Staff Info Updated Successfully!');</script>");
                UserInfoTable.DataBind();
            }

            else
            {
                Response.Write("<script> alert('User Does Not Exist.');</script>");
            }
        }
        //User Defined Update Function
        void updateStaffInfo()

        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update User_Login_Table SET FirstName=@FirstName, LastName=@LastName, Password=@Password WHERE UserID='" + TxtUserID.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", LastName.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", Password.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();


                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<scrpit>alert('" + ex.Message + "');</script>");
            }
        }


        //Delete Staff Info Event
        protected void DeleteInfo_Click(object sender, EventArgs e)
        {
            if (checkExistingUserID() == true)
            {
                deleteStaff();
                Response.Write("<script> alert('Staff User Deleted Successfully!');</script>");
                UserInfoTable.DataBind();
            }

            else
            {
                Response.Write("<script> alert('User Does Not Exist.');</script>");
            }
        }
        //User defined delete info function
        void deleteStaff()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from User_Login_Table WHERE UserID='" + TxtUserID.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();



                clearForm();
            }
            catch (Exception ex)
            {

            }
        }


        //Search User Event
        protected void SearchUser_Click(object sender, EventArgs e)
        {
            searchUserID();

        }

        //user defined search function
        void searchUserID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from User_Login_Table where UserID='" + UserID.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    FirstName.Text = dt.Rows[0][0].ToString();
                    LastName.Text = dt.Rows[0][1].ToString();
                    TxtUserID.Text = dt.Rows[0][2].ToString();
                    Password.Text = dt.Rows[0][3].ToString();
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