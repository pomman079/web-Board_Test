using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net;
using System.Data;
using System.Data.SqlClient;

namespace WebTest.Data
{
    public class List
    {

        public List<Entity.List> ListDB()
        {
            Entity.List ettL = new Entity.List();

            List<Entity.List> lett = new List<Entity.List>();

            //SqlDataReader reader = RunReader("DBO.[BOARD_VIEW_NOWWRITTEN_SP]");

            return lett;
        }
    }
}