using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LilHotelier
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton3.Visible = true; //Admin login Link Button

                    LinkButton1.Visible = false; //Admin Settings Link Button
                    LinkButton2.Visible = false; //Logout Link Button
                }
                else if (Session["role"].Equals("Staff"))
                {
                    LinkButton3.Visible = true; //Admin login Link Button

                    LinkButton1.Visible = false; //Admin Settings Link Button
                    LinkButton2.Visible = true; //Logout Link Button
                }
                else if (Session["role"].Equals("Admin"))
                {
                    LinkButton3.Visible = false; //Admin login Link Button

                    LinkButton1.Visible = true; //Admin Settings Link Button
                    LinkButton2.Visible = true; //Logout Link Button
                }


            }
            catch(Exception ex)
            {

            }
            
        }
        //Settings Button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminSettings.aspx");
        }
        //Logout Button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
                Session["UserID"] = "";
                Session["role"] = "";


                LinkButton3.Visible = true; //Admin login Link Button

                LinkButton1.Visible = false; //Admin Settings Link Button
                LinkButton2.Visible = false; //Logout Link Button
           
            Response.Redirect("StaffLoginPage.aspx");
        }
        //Admin Login Button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLoginPage.aspx");
        }
    }

       
    
}