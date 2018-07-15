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


public partial class contest_grade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)//添加
    {
        
        SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");
        Conn.Open();
        string sqlStr = "select * from grade";
       // string TextBox7 = TextBox3.Text + TextBox4.Text + TextBox5 + TextBox6.Text;
       // int a = (int.Parse)(TextBox7);
        // if (TextBox1.Text != "")
        //sqlStr = "insert into grade(Unum,Uname,Uchinese,Umath,Uenglish.Ucssa,Usum) values('TextBox6.Text.ToString ()' +' TextBox1.Text.ToString() ' + +' TextBox2.Text.ToString ()' +'  TextBox3.Text.ToString() +' +' TextBox4.Text.ToString() ' +' TextBox5.Text.ToString() ' +' TextBox7.Text.ToString() ');";
        //SqlCommand Comm = new SqlCommand(sqlStr, Conn);
        //sqlStr = "insert into grade(Unum,Uname,Uchinese,Umath,Uenglish,Ucssa,Usum) values('2220131272' ,' 蒋生栋'  ,'100' ,'130' ,' 110' ,' 250' ,'600');";
        sqlStr = "insert into grade(Unum,Uname,Uchinese,Umath,Uenglish,Ucssa,Usum) values(@num,@name,@chinese,@math,@english,@cssa,@sum);";
        
        SqlCommand Comm = new SqlCommand(sqlStr, Conn);

        Double TextBox7 = Convert.ToDouble( TextBox3.Text) + Convert.ToDouble(TextBox4.Text) + Convert.ToDouble(TextBox5.Text) + Convert.ToDouble(TextBox6.Text);

        Comm.Parameters.AddWithValue("@num", TextBox1.Text);
        Comm.Parameters.AddWithValue("@name", TextBox2.Text);
        Comm.Parameters.AddWithValue("@chinese", TextBox3.Text);
        Comm.Parameters.AddWithValue("@math", TextBox4.Text);
        Comm.Parameters.AddWithValue("@english", TextBox5.Text);
        Comm.Parameters.AddWithValue("@cssa", TextBox6.Text);
        Comm.Parameters.AddWithValue("@sum", TextBox7);
        SqlDataReader dr = Comm.ExecuteReader();
        dg.DataSource = dr;
        dg.DataBind();
        Conn.Close();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)//查找
    {
        SqlConnection Conn = new SqlConnection("Data Source=WIN-INSPIRON-PC;Initial Catalog=User;Integrated Security=True;");
        Conn.Open();
        SqlCommand Comm = new SqlCommand("select * from grade", Conn);
        SqlDataReader dr = Comm.ExecuteReader();
        dg.DataSource = dr;
        dg.DataBind();
        Conn.Close();
    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)//删除
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("t_inquire.aspx");
    }
}