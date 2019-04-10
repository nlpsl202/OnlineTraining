using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTraining
{
    public partial class Classroom_Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sErrMsg = string.Empty;
            DataTable dt = new DataTable();
            DBUtility sqlObj = null;
            sqlObj = new DBUtility();
            sqlObj.StoreProcedureName = "SP_Qry_ClassDetail";
            sqlObj.SetupSqlCommand(ref sErrMsg);
            sqlObj.SqlCmd.Parameters["@ClassNo"].Value = Session["ClassNo"].ToString();
            try
            {
                sqlObj.SqlConn.Open();
                SqlDataAdapter da = new SqlDataAdapter(sqlObj.SqlCmd);
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sqlObj.SqlConn.Close();
            }
        }
    }
}