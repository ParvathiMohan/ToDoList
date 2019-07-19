using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class Users
    {

        public int UserId { get; set; }
        public string UserName { get; set; }
        public string ActivityName { get; set; }
        public int ActivityStatusId { get; set; }
        public string ActivityStatus { get; set; }
        public DateTime LastUpdated { get; set; }



    }
}