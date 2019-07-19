using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    
    public partial class UserLogin : System.Web.UI.Page
    {     
        protected void Page_Load(object sender, EventArgs e)
        {

    }
        public void loginButton_Click(object sender, EventArgs e)
        {
            string UserName = "Jack";
            string Password = "123";           
            string LoginUserName = userNameTextBox.Text;
            string LoginPassword = passwordTextBox.Text;
            /*Checking login password and the login attempt count*/
            if (LoginUserName == UserName && LoginPassword == Password)
            {
                Session["UserName"] = LoginUserName;
                Response.Redirect("UserActivities.aspx");
            }
            else
            {
                Response.Write("Sorry! Wrong Credentials. Please try again.");
                passwordTextBox.Focus();
            }
        }
    }
    }
