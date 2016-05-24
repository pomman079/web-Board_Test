using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTest.Board
{
    public partial class View : System.Web.UI.Page
    {
        string rcv_writer = string.Empty;
        string rcv_no = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.QueryString.Count.Equals(2) || !Request.QueryString.GetKey(0).ToString().Trim().Equals("idx") || 
                !Request.QueryString.GetKey(1).ToString().Trim().Equals("writer"))
            {
                Response.Redirect("write.aspx");
            }

            rcv_no = Request.QueryString["idx"].ToString();
            rcv_writer  = Request.QueryString["writer"];

            WebTest.Entity.Register etReg = new Entity.Register();

            etReg.DS_IDX = Convert.ToInt32(rcv_no) ;
            etReg.NM_USERID = rcv_writer;

            ViewDB(etReg);


            view_writer.InnerText = rcv_writer ;
            view_title.InnerText = etReg.NM_TITLE;
            view_contents.InnerText = etReg.NM_CONTENTS;
        }

        private string ViewDB(WebTest.Entity.Register etReg)
        {
            try
            {
                //Data.Register dbReg = new Data.Register().BOARD_REGISTRER_SP(etReg);
                string a = new Data.View().BOARD_VIEW_NOWWRITTEN_SP(ref etReg);

                return a;
            }
            catch (Exception e)
            {
                //return e.StackTrace.ToString();
                return e.Message.ToString();
            }
        }

        /// <summary>
        /// 리스트 보기 버튼 클릭 이벤트
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void view_btn_ServerClick(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 수정 버튼 클릭 이벤트
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void modify_btn_ServerClick(object sender, EventArgs e)
        {

        }
    }
}