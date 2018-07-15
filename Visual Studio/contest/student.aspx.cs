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

public partial class contest_student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Label2.Text += "hello,尊敬的" + Session["text1"] + "用户，您好!" + "<br/>";

    }

    protected void Button1_Click(object sender, EventArgs e)//查询个人成绩
    {
        //Label2.Text += "hello,尊敬的" + Session["text1"] + "用户，您好!" + "<br/>";
        SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");

        DataSet ds = new DataSet();
        DataTable dt = ds.Tables["grade"];
        DataRowCollection colddrow;
        DataRow drow;
        Conn.Open();
        //string strSQL = "select * from grade order by Usum desc;";
        SqlDataAdapter da = new SqlDataAdapter("select * from grade where Unum = '" + Session["text1"] + "'", Conn);
        da.Fill(ds, "grade");
        dt = ds.Tables["grade"];
        colddrow = dt.Rows;
        for (int i = 0; i < colddrow.Count; i++)
        {
            drow = colddrow[i];
                 if (Convert.ToDouble(Session["text1"]) == Convert.ToDouble(drow[0]))
                {
                    Label1.Text += "你的各科成绩是：" + "<br/>";
                    Label1.Text += "Unum:" + drow[0] + "   ；";
                    Label1.Text += "Uname:" + drow[1] + "   ；";
                    Label1.Text += "Uchinese:" + drow[2] + "   ；";
                    Label1.Text += "Umath:" + drow[3] + "   ；";
                    Label1.Text += "Uenglish:" + drow[4] + "   ；";
                    Label1.Text += "Ucssa:" + drow[5] + "   ；" + "<br/>";
                }

        }
        Conn.Close();
        Conn = null;





        /*SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");
        Conn.Open();
        //   string sqlStr = "insert into Users(Uname,Ucode,Ubirth,Uphone,Umail) values('TextBox1.Text.ToString ()' +'TextBox2.Text.ToString ()'+'TextBox4.Text.ToString()'+ 'TextBox5.Text.ToString()'+ 'TextBox6.Text.ToString()')";
        SqlCommand Comm = new SqlCommand("select * from grade where Unum = '"+TextBox1.Text+"'", Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        dg.DataSource = dr;
        dg.DataBind();
        Conn.Close();*/
    }

    protected void Button2_Click(object sender, EventArgs e)//查询平均成绩
    {
        SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");
        Conn.Open();
        String strSQL = "select avg(" + TextBox1.Text + ")  from grade";
        SqlCommand Comm = new SqlCommand(strSQL, Conn);
        Double d = (Double)Comm.ExecuteScalar();
        Message.Text = "所有人"+TextBox1.Text+"的平均成绩为" + d.ToString() + "分";
        Conn.Close();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)//查询排名
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
        for (int i = 0; i < colddrow.Count; i++)
        {
            int a= i + 1;
            drow = colddrow[i];
            if (Convert.ToDouble(Session["text1"]) == Convert.ToDouble(drow[0]))
            {
                Label1.Text += "您的成绩及排名如下：" +  "<br/>";
                Label1.Text += "Unum:" + drow[0]+"   ；";
                Label1.Text += "Uname:" + drow[1] + "   ；";
                Label1.Text += "Uchinese:" + drow[2] + "   ；";
                Label1.Text += "Umath:" + drow[3] + "   ；";
                Label1.Text += "Uenglish:" + drow[4] + "   ；";
                Label1.Text += "Ucssa:" + drow[5] + "   ；";
                Label1.Text += "Usum:" + drow[6] + "   ；";
                Label1.Text += "您的排名是:" + a+"<br/>";
             
            }
           
        }
            Conn.Close();
            Conn = null;
















        /*1.  string sqlStr = "insert into Users(Uname,Ucode,Ubirth,Uphone,Umail) values('TextBox1.Text.ToString ()' +'TextBox2.Text.ToString ()'+'TextBox4.Text.ToString()'+ 'TextBox5.Text.ToString()'+ 'TextBox6.Text.ToString()')";
        SqlCommand Comm = new SqlCommand("select * from grade order by Usum desc", Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        dg.DataSource = dr;
        dg.DataBind();
        Conn.Close();*/



        /*        string strSQL = "select * from grade order by Usum desc;";
                SqlDataAdapter da = new SqlDataAdapter(strSQL, Conn);
                DataSet ds = new DataSet();
                DataRowCollection colddrow;
                DataTable dt = new DataTable("grade1");
                da.Fill(ds, "grade1");
                // DataTable dt = ds.Tables["grade1"];
                dt = ds.Tables["grade1"];

                //DataTable dt = ds.Tables["grade1"];
                colddrow = dt.Rows;
                DataRow mydr;
                dt.Columns.Add(new DataColumn("Urank", typeof(Int32)));
                for (int i = 0; i < colddrow.Count; i++)
                {
                    mydr = dt.NewRow();
                    mydr[0] = i;
                    dt.Rows.Add(mydr);
                }
                ds.Tables.Add(dt);
                dg.DataSource = ds.Tables["grade1"].DefaultView;
                dg.DataBind();
                Conn.Close();*/

        /* SqlCommandBuilder cb = new SqlCommandBuilder(da);
         //自动生成Adapter的Command命令。
         da.Update(ds, "grade");//为 DataSet 中每个已插入、已更新或已删除的行调用相应的 INSERT、UPDATE 或 DELETE 语句。
         dg.DataSource = ds.Tables["grade"].DefaultView;
         dg.DataBind();
         Conn.Close();



        DataSet myds = new DataSet();
         DataTable mydt = new DataTable(“grade”);//创建一个DataTable	
         DataRow mydr;
        // mydt.Columns.Add(new DataColumn("数字", typeof(Int32)));
         mydt.Columns.Add(new DataColumn("平方", typeof(Int32)));
         for (int i = 0; i < 10; i++)
         {
             mydr = mydt.NewRow();
             mydr[0] = i;
             mydr[1] = i * i;
             mydt.Rows.Add(mydr);
         }
         myds.Tables.Add(mydt);
         dg.DataSource = myds.Tables["Squares"].DefaultView;
         dg.DataBind();*/

    }
}