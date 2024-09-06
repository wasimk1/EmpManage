using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace EmpManage.Others
{
    public class helper
    {

        string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection conn;

        //Created for Global msg box or alert msg
        public void MessageBox(System.Web.UI.Page pagetype, string strMsg)
        {
            try
            {
                ScriptManager.RegisterClientScriptBlock(pagetype, this.GetType(), "AlertMessage", "alert('" + strMsg + "')", true);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public DataTable GetDatainDataTable(string strquery)
        {
            try
            {
                conn = new SqlConnection(constr);
                conn.Open();


                DataTable dt = new DataTable();
                SqlCommand objCmd;
                objCmd = new SqlCommand(strquery, conn);
                objCmd.CommandTimeout = 0;
                
                SqlDataAdapter objSda = new SqlDataAdapter(objCmd);
                objSda.Fill(dt);
                return dt;

            }
            catch (Exception)
            {
                throw;
            }

        }
    }
}