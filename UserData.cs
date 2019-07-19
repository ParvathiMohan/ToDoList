using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class UserData
    {
        public List<Users> LoadActivities(string UserName)
        {
            using(IDbConnection conn = new SQLiteConnection(LoadConnString()))
            {
               var activityList  = conn.Query<Users>("select * from USER_ACTIVITIES where UserName = '" + UserName + "'", new DynamicParameters());
                return activityList.ToList();
            }
        }

        public void AddActivity(Users users)
        {
            using (IDbConnection conn = new SQLiteConnection(LoadConnString()))
            {
                conn.Execute("insert into USER_ACTIVITIES (UserId, UserName, ActivityName, ActivityStatusId, LastUpdated,ActivityStatus) values (@UserId,@UserName,@ActivityName,@ActivityStatusId,@LastUpdated,@ActivityStatus)",users);
            }
        }

        public void UpdateActivity(Users users)
        {
            using (IDbConnection conn = new SQLiteConnection(LoadConnString()))
            {
                conn.Execute("UPDATE USER_ACTIVITIES SET ActivityName = @ActivityName,LastUpdated = @LastUpdated,ActivityStatus = @ActivityStatus WHERE UserId = @UserId AND ActivityName =@ActivityName", users);
            }
        }
        private static string LoadConnString(string id = "Default")
        {
            return ConfigurationManager.ConnectionStrings[id].ConnectionString;
        }
    }
}