using EmpManage.Others;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpManage
{
    public partial class RegPage : System.Web.UI.Page
    {
        public helper objhelper = new helper();
        public string errmsg = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkbtnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            try
            {
                if (Validate() == true)
                {
                    DoUsersRegister();
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

                if (string.IsNullOrEmpty(txtreguser.Text.Trim()))
                {
                    errmsg = "Username cannot be empty!";
                    objhelper.MessageBox(this, errmsg);
                    result = false;
                    return result;
                }

                if (string.IsNullOrEmpty(txtregcllv.Text.Trim()))
                {
                    errmsg = "Casual Leave cannot be empty!";
                    objhelper.MessageBox(this, errmsg);
                    result = false;
                    return result;
                }
                if(string.IsNullOrEmpty(txtlvsl.Text.Trim()))
                {
                    errmsg = "Sick Leave cannot be empty!";
                    objhelper.MessageBox(this, errmsg);
                    result = false;
                    return result;
                }
                if(string.IsNullOrEmpty(txtlvwfh.Text.Trim()))
                {
                    errmsg = "Work from home cannot be empty!";
                    objhelper.MessageBox(this, errmsg);
                    result = false;
                    return result;
                }

                return result;
            }

            catch (Exception ex)
            {
                objhelper.MessageBox(this, ex.Message);
                return false;
            }

        }
        public void DoUsersRegister()
        {
            try
            {

            }
            catch (Exception ex)
            {

                objhelper.MessageBox(this, ex.Message);
            }

        }
    }
}