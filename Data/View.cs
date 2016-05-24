using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Data;
using System.Data.SqlClient;


namespace WebTest.Data
{
    public class View
    {

        public string BOARD_VIEW_NOWWRITTEN_SP(ref Entity.Register entReg)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand comnd;


            conn.ConnectionString = @"Data Source=.\SQLSERVER;" + "User ID=webtest;password=123qwe!!!;database=OKEYDOKEY;";

            comnd = new SqlCommand("DBO.BOARD_VIEW_NOWWRITTEN_SP", conn);
            comnd.CommandType = CommandType.StoredProcedure;
            

            try{
                conn.Open();

                comnd.Parameters.Add("@DS_CATAGORY", SqlDbType.Int).Value = entReg.DS_CATAGORY;
                comnd.Parameters.Add("@DS_IDX", SqlDbType.BigInt).Value = entReg.DS_IDX;
                comnd.Parameters.Add("@NM_USERID", SqlDbType.NVarChar, 50).Value = entReg.NM_USERID;

                SqlDataReader rd = comnd.ExecuteReader();

                //while (rd.Read())
                rd.Read();
                {
                    //string sp_title = rd["NM_TITLE"].ToString();
                    entReg.NM_TITLE = rd["NM_TITLE"].ToString();
                    //string sp_contents = rd["NM_CONTENETS"].ToString();
                    entReg.NM_CONTENTS = rd["NM_CONTENTS"].ToString();
                    //string sp_filepath = rd["NM_FILEPATH"].ToString() ;
                    entReg.NM_FILEPATH = rd["NM_FILEPATH"].ToString();
                }
                conn.Close();
            }
            catch(Exception ex)
            {
                return "exception- BOARD_VIEW_NOWWRITTEN_SP"+string.Format("\nEX MESSAGE: {0}\nEX description: {1}",ex.Message,ex.StackTrace);
            }
           

            return "ok";
        }
    }
}