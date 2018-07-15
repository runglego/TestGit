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

public partial class contest_t_inquire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)//综合查询
    {
        SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");
        Conn.Open();
        SqlCommand Comm = new SqlCommand("select * from grade", Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        dg.DataSource = dr;
        dg.DataBind();
        Conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)//单科查询
    {
        SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");
        Conn.Open();
        //   string sqlStr = "insert into Users(Uname,Ucode,Ubirth,Uphone,Umail) values('TextBox1.Text.ToString ()' +'TextBox2.Text.ToString ()'+'TextBox4.Text.ToString()'+ 'TextBox5.Text.ToString()'+ 'TextBox6.Text.ToString()')";
        SqlCommand Comm = new SqlCommand("select Unum,Uname, " + TextBox1.Text + " from grade ", Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        dg.DataSource = dr;
        dg.DataBind();
        Conn.Close();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)//单科排名查询
    {
        SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");
        Conn.Open();
        //   string sqlStr = "insert into Users(Uname,Ucode,Ubirth,Uphone,Umail) values('TextBox1.Text.ToString ()' +'TextBox2.Text.ToString ()'+'TextBox4.Text.ToString()'+ 'TextBox5.Text.ToString()'+ 'TextBox6.Text.ToString()')";
        SqlCommand Comm = new SqlCommand("select Unum,Uname, " + TextBox1.Text + " from grade order by " + TextBox1.Text + " desc", Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        dg.DataSource = dr;
        dg.DataBind();
        Conn.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)//综合排名查询
    {
        SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");

        DataSet ds = new DataSet();
        DataTable dt = ds.Tables["grade"];
        DataRowCollection colddrow;
        DataRow drow;
        Conn.Open();
        //string strSQL = "select * from grade order by Usum desc;";
        SqlDataAdapter da = new SqlDataAdapter("select * from grade order by Usum desc;", Conn);
        da.Fill(ds, "grade");
        dt = ds.Tables["grade"];
        colddrow = dt.Rows;
        Label1.Text += "学生成绩及排名如下：" + "<br/>";
        for (int i = 0; i < colddrow.Count; i++)
        {
            int a = i + 1;
            drow = colddrow[i];
           
               
                Label1.Text += "Unum:" + drow[0] + "   ；";
                Label1.Text += "Uname:" + drow[1] + "   ；";
                Label1.Text += "Uchinese:" + drow[2] + "   ；";
                Label1.Text += "Umath:" + drow[3] + "   ；";
                Label1.Text += "Uenglish:" + drow[4] + "   ；";
                Label1.Text += "Ucssa:" + drow[5] + "   ；";
                Label1.Text += "Usum:" + drow[6] + "   ；";
                Label1.Text += "您的排名是:" + a + "<br/>";

           

        }
        Conn.Close();
        Conn = null;


        /*SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");
        Conn.Open();
        SqlCommand Comm = new SqlCommand("select * from grade order by Usum desc", Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        dg.DataSource = dr;
        dg.DataBind();
        Conn.Close();*/
    }
}