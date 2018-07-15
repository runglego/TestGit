using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Configuration;

public partial class contest_login3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");

        DataSet ds = new DataSet();
        DataTable dt = ds.Tables["student"];
        DataRowCollection colddrow;
        DataRow drow;
        Conn.Open();
        //string strSQL = "select * from grade order by Usum desc;";
        SqlDataAdapter da = new SqlDataAdapter("select * from student;", Conn);
        da.Fill(ds, "student");
        dt = ds.Tables["student"];
        colddrow = dt.Rows;
        for (int i = 0; i < colddrow.Count; i++)
        {

            drow = colddrow[i];
            if (Convert.ToDouble(TextBox1.Text) == Convert.ToDouble(drow[0]) && Convert.ToInt64(TextBox2.Text) == Convert.ToInt64(drow[1]))
            {
                Label1.Text += "恭喜您登陆成功";
                Session["text1"] = TextBox1.Text;
                Session["text2"] = TextBox2.Text;
                Server.Transfer("student.aspx");
            }

        }
        Label1.Text += "您输入的账号或密码有误，请重新输入"+"<br/>";
        Conn.Close();
        Conn = null;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}