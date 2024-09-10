using EmpManage.Others;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpManage
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection conn;
        public helper objhelper = new helper();
        public static int usererrlogincount = 0;
        public string errmsg = string.Empty;
        public string strcmd = string.Empty;
        public string GetTimePassWord = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(constr);
                conn.Open();
                GetTimePassWord = getrealTime();
            }
            catch (Exception ex)
            {
                objhelper.MessageBox(this, ex.Message);
                return;
            }

        }

        public string getrealTime()
        {
            DateTime d = DateTime.Now;
            string date = d.ToString("dd");
            string time = d.ToString("HH");
            string today = date + time;
            return today;
        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (Validate() == true)
                {
                    DoUsersLogin();
                }
            }
            catch (Exception ex)
            {
                objhelper.MessageBox(this, ex.Message);
                return;
            }

        }
        public void DoLockedUser()
        {
            try
            {
                strcmd = "";
                strcmd = "UPDATE EMP_USERS_DETAILS SET EMP_STATUS='INACTIVE' WHERE TXT_USERNAME='" + txtuser.Text.ToUpper().ToString().Trim() + "'";
                SqlCommand sqlcmd = new SqlCommand(strcmd, conn);
                sqlcmd.ExecuteNonQuery();
                conn.Close();
            } 
            catch (Exception ex )
            {
                objhelper.MessageBox(this, ex.Message);
            }
            
        }
        public void DoUsersLogin()
        {
            try
            {
                string userstatus = "ACTIVE";
                Session["username"] = "";
                Session["password"] = "";

                strcmd = "SELECT * FROM EMP_USERS_DETAILS WHERE TXT_USERNAME='" + txtuser.Text.ToUpper().ToString().Trim() + "'";
                DataTable dt_user = objhelper.GetDatainDataTable(strcmd);

                if (dt_user.Rows.Count>0) {
                    if (userstatus == dt_user.Rows[0]["EMP_STATUS"].ToString().Trim())
                    {
                        if (txtuser.Text.ToUpper().ToString().Trim() == dt_user.Rows[0]["TXT_USERNAME"].ToString().Trim() &&
                            txtpass.Text.ToUpper().ToString().Trim() == GetTimePassWord)
                        {
                            Session["username"] = txtuser.Text.ToUpper().ToString().Trim();
                            Session["password"] = txtpass.Text.ToUpper().ToString().Trim();
                            Response.Redirect("HomeAllMenus.aspx");
                        }
                        else
                        {
                            usererrlogincount++;
                            if (usererrlogincount > 3)
                            {
                                errmsg = "";
                                errmsg = "Userid is locked, contact admin";
                                DoLockedUser();
                                objhelper.MessageBox(this, errmsg);
                                //DoLockedUser();

                                return;
                            }
                            else
                            {
                                int tot = 4 - usererrlogincount;
                                errmsg = "";
                                errmsg = "Invalid Userid or Password, now you have only " + tot.ToString() + " attempt left";
                                objhelper.MessageBox(this, errmsg);
                                return;
                            }
                        }

                    }
                    else
                    {
                        errmsg = "Userid is locked, please contact admin";
                        objhelper.MessageBox(this, errmsg); return;
                    }
                }
                else
                {
                    errmsg = "No User found, please check the spelling correctly";
                    objhelper.MessageBox(this, errmsg); return;
                }
            }

            catch (Exception ex)
            {
                objhelper.MessageBox(this, ex.Message);
                return;
            }

        }

        public bool Validate()
        {
            try
            {
                Boolean result = true;
                if (string.IsNullOrEmpty(txtuser.Text.Trim()))
                {
                    errmsg = "Username cannot be empty!";
                    objhelper.MessageBox(this, errmsg);
                    result = false;
                    return result;
                }

                if (string.IsNullOrEmpty(txtpass.Text))
                {
                    errmsg = "Password cannot be empty!";
                    objhelper.MessageBox(this, errmsg);
                    result = false;
                    return result;
                }
                return result;
            }
            catch (Exception ex )
            {
                objhelper.MessageBox(this, ex.Message);
                return false;
            }
            
        }

        protected void linkbtncreateuser_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegPage.aspx");
        }
    }
}