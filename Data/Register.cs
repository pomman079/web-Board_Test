using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Data;
using System.Data.SqlClient;

namespace WebTest.Data

{
    public class Register
    {
        public int BOARD_REGISTRER_SP(Entity.Register regInfo)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand comnd;

            conn.ConnectionString = @"Data Source=.\SQLSERVER;" + "User ID=webtest;password=123qwe!!!;database=OKEYDOKEY;";

            conn.Open();
            //dbStatus = "시작:" + conn.State.ToString() + "@<% &nbsp;%>";

            SqlParameter[] parameters =
            {
                new SqlParameter("@DS_CATAGORY",SqlDbType.Int)
                ,new SqlParameter("@NM_USERID", SqlDbType.NVarChar,50)
                ,new SqlParameter("@NM_TITLE", SqlDbType.NVarChar,20)
                ,new SqlParameter("@NM_CONTENTS",SqlDbType.NVarChar,1300)
                ,new SqlParameter("@NM_FILEPATH", SqlDbType.NVarChar,150)
                ,new SqlParameter("@DS_STATUS", SqlDbType.TinyInt)
                ,new SqlParameter("@SD_REGDATE", SqlDbType.DateTime)
                ,new SqlParameter("@DS_RESULT", SqlDbType.BigInt)
            };


            //System.Console.WriteLine(string.Format("dscategory->{0}", regInfo.DS_CATAGORY));


            parameters[0].Value = regInfo.DS_CATAGORY.ToString();
            parameters[1].Value = regInfo.NM_USERID;
            parameters[2].Value = regInfo.NM_TITLE;
            parameters[3].Value = regInfo.NM_CONTENTS;
            parameters[4].Value = regInfo.NM_FILEPATH;
            parameters[5].Value = regInfo.DS_STATUS.ToString();
            parameters[6].Value = DateTime.Now;

            //parameters[0].Value = regInfo.NM_USERID;
            //parameters[1].Value = regInfo.NM_TITLE;
            //parameters[2].Value = regInfo.NM_CONTENTS;
            //parameters[3].Value = regInfo.NM_FILEPATH;
            //parameters[4].Value = regInfo.DS_STATUS.ToString();
            //parameters[5].Value = DateTime.Now;

            parameters[7].Direction = ParameterDirection.Output;


            //comnd = new SqlCommand(parameters,conn);
            comnd = new SqlCommand("DBO.BOARD_REGISTRER_SP", conn);

            comnd.Parameters.Insert(0, parameters[0]);
            comnd.Parameters.Insert(1, parameters[1]);
            comnd.Parameters.Insert(2, parameters[2]);
            comnd.Parameters.Insert(3, parameters[3]);
            comnd.Parameters.Insert(4, parameters[4]);
            comnd.Parameters.Insert(5, parameters[5]);
            comnd.Parameters.Insert(6, parameters[6]);
            comnd.Parameters.Insert(7, parameters[7]);

            comnd.CommandType = CommandType.StoredProcedure;

            int a = comnd.ExecuteNonQuery();
            
            conn.Close();
            //dbStatus += "    끝:" + conn.State.ToString();


            return Convert.ToInt32(parameters[7].Value.ToString());     //return a;
        }


    }
}