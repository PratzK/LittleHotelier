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
    public partial class AdminLoginPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Admin_User_Table where UserName='" + AdminUserId.Text.Trim() + "' AND Password='" + AdminPswd.Text.Trim() + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["UserName"] = dr.GetValue(2).ToString();
                        Session["role"] = "Admin";
                        
                    }
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Invalid Credentials');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}