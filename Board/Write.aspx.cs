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
    public partial class Write : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //write_ServerClick(sender, e);
            if (!IsPostBack)
            {
                Text_Title.Value = "제목이네";
                Text_Writer.Value = "작성자네";
                Text_Contents.Value = "내용이네";
            }
        }

        public void write_ServerClick(object sender, EventArgs e)
        {
            //Result.InnerText = "ffff!";
            //Response.Write("asdf");
            string dbResult= string.Empty;
            string url_request = "view.aspx?";

            if (string.IsNullOrWhiteSpace(Text_Title.Value.ToString().Trim()))
            {
                Result.InnerText = "제목 입력하삼..ㅡ,ㅡ";
            }
            if (string.IsNullOrEmpty(Text_Writer.Value.ToString().Trim()))
            {
                Result.InnerText +="\n"+ "작성자 입력하삼..ㅡ,ㅡ";
            }
            if (string.IsNullOrEmpty(Text_Contents.Value.ToString().Trim()))
            {
                Result.InnerText += "\n" + "내용 입력하삼..ㅡ,ㅡ";
            }

            if (!string.IsNullOrEmpty(Text_Contents.Value.ToString().Trim()) && !string.IsNullOrEmpty(Text_Writer.Value.ToString().Trim()) && !string.IsNullOrEmpty(Text_Title.Value.ToString().Trim()))
            {
                WebTest.Entity.Register etReg = new WebTest.Entity.Register();
                
                etReg.NM_USERID = Text_Writer.Value.ToString().Trim();
                etReg.NM_TITLE = Text_Title.Value.ToString().Trim();
                etReg.NM_CONTENTS = Text_Contents.Value.ToString().Trim();

                
                    
                dbResult= RegisterDB(etReg);
                Result.InnerText = dbResult;

                Response.Redirect(string.Format("{0}idx={1}&writer={2}", url_request, dbResult,Text_Writer.Value.ToString()));//url_request
            }
        }

        private string RegisterDB(WebTest.Entity.Register etReg)
        {
            

            try
            {
                //Data.Register dbReg = new Data.Register().BOARD_REGISTRER_SP(etReg);
                int a = new Data.Register().BOARD_REGISTRER_SP(etReg);


                return a.ToString();
            }
            catch (Exception e)
            {
                //return e.StackTrace.ToString();
                return e.Message.ToString();
            }
        }

        protected void btn_write_ServerClick(object sender, EventArgs e)
        {

        }
    }
}