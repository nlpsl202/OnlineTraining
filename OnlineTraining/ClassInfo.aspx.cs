using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace OnlineTraining
{
    public partial class ClassInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sErrMsg = string.Empty;
            DataTable dataTable = new DataTable();
            DBUtility sqlObj = null;
            sqlObj = new DBUtility();
            sqlObj.StoreProcedureName = "SP_Qry_ClassInfo";
            sqlObj.SetupSqlCommand(ref sErrMsg);
            try
            {
                sqlObj.SqlConn.Open();
                SqlDataAdapter da = new SqlDataAdapter(sqlObj.SqlCmd);
                da.Fill(dataTable);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sqlObj.SqlConn.Close();
            }
            BootstrapGridView1.DataSource = dataTable; //告訴GridView資料來源為誰
            BootstrapGridView1.DataBind();//綁定     
        }

        [WebMethod]
        public static string IntoClassroom(string ClassNo, string BackPage)
        {
            try
            {
                HttpContext.Current.Session["ClassNo"] = ClassNo;
                HttpContext.Current.Session["ClassroomBackPage"] = BackPage;
                return "success";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
    }
}