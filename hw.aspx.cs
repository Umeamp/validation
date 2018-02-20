using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class hw : System.Web.UI.Page
{
    String qry;
    String connection = "Data Source=SCHHAJED\\SQLEXPRESS;Initial Catalog=student;Integrated Security=True;Pooling=False";
    SqlConnection con;

    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        qry = "insert into st values('" + TextBox1.Text + "','" + TextBox2.Text +  "')";
        con = new SqlConnection(connection);
        cmd = new SqlCommand(qry, con);
        con.Open();

        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Record Inserted.";

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataSource ds;
        qry = "select * from st";
        ds = new SqlDataSource(connection, qry);

        GridView1.DataSource = ds;

        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        qry = "update st set sname='" + TextBox1.Text + "',sclass='" + TextBox2.Text +  "'";
        con = new SqlConnection(connection);
        cmd = new SqlCommand(qry, con);
        con.Open();
        cmd.ExecuteNonQuery();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        qry = "delete from st where id='" + TextBox1.Text + "'";
        con = new SqlConnection(connection);
        cmd = new SqlCommand(qry, con);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Deleted....");
    }
}
