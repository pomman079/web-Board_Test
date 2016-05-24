using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Data;
using System.Data.SqlClient;

namespace WebTest.Board
{
    public partial class ViewList : System.Web.UI.Page
    {
        int pageCnt;
        int listCnt;

        protected void Page_Load(object sender, EventArgs e)
        {
            pageCnt = 0;
            listCnt = 10;

            fill_list(sender, e);
        }

        protected void fill_list(object sender, EventArgs e)
        {
            List<Entity.List> lList = new List<Entity.List>();

            //리스트 가져오는 SP호출 및 데이터 목록 저장.
            //lList = ;
        }

        
    }
}