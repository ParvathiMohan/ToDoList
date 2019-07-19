using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class UserActivities : System.Web.UI.Page
    {
        //private string UserName;
        Users user = new Users();
        string UserName = null;
        public void Page_Load(object sender, EventArgs e)
        {
            user.UserName = Session["UserName"].ToString();
            if (!Page.IsPostBack)
            {
                LoadData();
            }
        }
        public void LoadData()
        {
            
                UserData userData = new UserData();
                UserName = user.UserName;
                nameLabel.Text = UserName.ToString() + "!";
                List<Users> dataSet = userData.LoadActivities(UserName).ToList();
                int userId = dataSet.Where(x => x.UserName == user.UserName).Select(x => x.UserId).FirstOrDefault();
                Session["UserId"] = userId;          
                GridView1.DataSource = dataSet;
                GridView1.DataBind();
            
        }

        protected void newRecordAddButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddActivity.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadData();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            UserData uData = new UserData();
           TextBox Task = GridView1.Rows[e.RowIndex].FindControl("nameTextBox") as TextBox;
           TextBox TaskStatus = GridView1.Rows[e.RowIndex].FindControl("statusTextBox") as TextBox;
            user.ActivityName = Task.Text;
            user.ActivityStatus = TaskStatus.Text;
            user.LastUpdated = DateTime.Now;
            if (TaskStatus.Text == "Completed")
            {
                user.ActivityStatusId = 1;
            }
            else if (TaskStatus.Text == "In Progress")
            {
                user.ActivityStatusId = 2;
            }
            else if (TaskStatus.Text == "Yet to Start")
            {
                user.ActivityStatusId = 3;
            }
            else
            {
                Response.Redirect("Enter a Valid Status.\n Valid Status are : 'Completed', 'In Progress', 'Yet to Start'");
                throw new ArgumentNullException();
            }
            
            uData.UpdateActivity(user);
            GridView1.EditIndex = -1;
            LoadData();


        }
        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadData();
            
        }
    }
}