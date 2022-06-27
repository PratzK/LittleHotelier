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
    public partial class EditAdminUserPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Add New Staff User Event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkExistingUserID() == true)
            {
                UserExists.Visible = true;
                UserExists.Text = "User Name Already Exists. Try Another!";
                //Response.Write("<script> alert('User ID Taken. Try Another.');</script>");
            }

            else
            {
                addNewUser();
                //Working?!?!?!?!?
                Response.Write("<script> alert('New Admin Added!');</script>");
                AdminUserInfoTable.DataBind();
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

                SqlCommand cmd = new SqlCommand("select * from Admin_User_Table where UserName='" + TxtAdminUserName.Text.Trim() + "';", con);

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

                SqlCommand cmd = new SqlCommand("insert into Admin_User_Table(FirstName,LastName,UserName,Password) values(@FirstName,@LastName,@UserName,@Password)", con);
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", LastName.Text.Trim());
                cmd.Parameters.AddWithValue("@UserName", TxtAdminUserName.Text.Trim());
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



        //Update Staff User Info

        protected void UpdateInfo_Click(object sender, EventArgs e)
        {
            if (checkExistingUserID() == true)
            {
                updateAdminInfo();
                Response.Write("<script> alert('Admin Info Updated Successfully!');</script>");
                AdminUserInfoTable.DataBind();
            }

            else
            {
                Response.Write("<script> alert('User Does Not Exist.');</script>");
            }
        }

        //user defined update function

        void updateAdminInfo ()

        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update Admin_User_Table SET FirstName=@FirstName, LastName=@LastName, Password=@Password WHERE UserName='"+ TxtAdminUserName.Text.Trim() + "'", con);
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


        //Delete Staff User
        protected void DeleteInfo_Click(object sender, EventArgs e)
        {
            if (checkExistingUserID() == true)
            {
                deleteAdmin();
                Response.Write("<script> alert('Admin Deleted Successfully!');</script>");
                AdminUserInfoTable.DataBind();
            }

            else
            {
                Response.Write("<script> alert('User Does Not Exist.');</script>");
            }

        }

        //user defined delete funtion
        void deleteAdmin()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from Admin_User_Table WHERE UserName='" + TxtAdminUserName.Text.Trim() + "'", con);
                
                cmd.ExecuteNonQuery();
                con.Close();
                


                clearForm();
            }
            catch (Exception ex)
            {
                
            }
        }

        void clearForm()
        {
            FirstName.Text = "";
            LastName.Text = "";
            TxtAdminUserName.Text = "";
            AdminUserName.Text = "";
            Password.Text = "";
        }


        //Search Staff User Info
        protected void SearchUser_Click(object sender, EventArgs e)
        {

        }
    }
}