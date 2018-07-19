﻿using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Presentation_Layer.Models;
using IPL_Entity;
using Login_User_BLL;

namespace Presentation_Layer.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            try
            {
                Entities1 entity = new Entities1();
                User user = new User();
                user.UserName = UserName.Text;
                user.Pass = Password.Text;
                int val;
                Login_BLL obj = new Login_BLL();
                val = obj.log_user(user);
                if (val == 1)
                {
                    Response.Redirect("Add_Team.aspx");

                }
                else
                    if (val == 2)
                {

                    Response.Redirect("~/Account/Customer/Home.aspx");

                }
                else
                    if (val == 3)
                {
                    Response.Redirect("~/Account/Admin/Home.aspx");
                    //~/Account/PL_Team/Add_Team.aspx
                }
                else
                {

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}