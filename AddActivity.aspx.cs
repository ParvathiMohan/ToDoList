using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AddActivity : System.Web.UI.Page
    {
        Users user = new Users();
        protected void Page_Load(object sender, EventArgs e)
        {
            user.UserId = int.Parse((Session["UserId"]).ToString());
            user.UserName = Session["UserName"].ToString();
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            UserData uData = new UserData();
            user.ActivityName = newActivityTextBox.Text;
            user.ActivityStatusId = int.Parse(activityStatusDropDownList.SelectedValue);
            if(user.ActivityStatusId == 1)
            {
                user.ActivityStatus = "Completed";
            }
            else if(user.ActivityStatusId == 2)
            {
                user.ActivityStatus = "In Progress";
            }
            else if (user.ActivityStatusId == 3)
            {
                user.ActivityStatus = "Yet to Start";
            }
            else
            {
                Response.Write("Please Choose your Activity Status!");
            }
            user.LastUpdated = DateTime.Now;
            uData.AddActivity(user);
            backButton_Click(sender,e);
        }

        protected void backButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserActivities.aspx");
        }
    }
}