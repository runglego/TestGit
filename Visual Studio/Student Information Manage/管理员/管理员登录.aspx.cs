using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 学生信息_管理员 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void 管理员登录(object sender, EventArgs e)
    {
        string A_num = Request["A_num"].ToString();
        string A_password = Request["A_password"].ToString();
        if (A_num != "" && A_password != "" && A_num == "吴奎贤" && A_password == "wukuixian88")
        {
            Response.Redirect("管理员首页.aspx");
        }
        else
        {
            Response.Write("<script>alert('Login error!');window.location.href='管理员登录.aspx'</script>");
        }
    }
}