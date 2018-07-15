using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class 学生信息_物理系 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlconnstr = ConfigurationManager.ConnectionStrings["大作业ConnectionString2"].ConnectionString;
        DataSet ds = new DataSet();
        using (SqlConnection sqlconn = new SqlConnection(sqlconnstr))
        {
            SqlDataAdapter sqld = new SqlDataAdapter("select * from 物理系", sqlconn);
            sqld.Fill(ds, "tab物理系");
        }
        DataList1.DataSource = ds.Tables["tab物理系"].DefaultView;
        DataList1.DataBind();
    }
}