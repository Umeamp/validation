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

using System.Data.OracleClient;

public partial class sw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            using (OracleConnection con = new OracleConnection())
            {
                con.ConnectionString = "user id=scott;password=tiger;data source=SAP";
                con.Open();
                DataSet ds = new DataSet();
                using (OracleDataAdapter da = new OracleDataAdapter("select * from emp", con))
                {
                    da.Fill(ds);

                }
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String connection = "Data Source=SAP;User Id=scott;Password=tiger;";
        OracleConnection con = new OracleConnection(connection);
        OracleCommand cmd = new OracleCommand("Select * from stu");


        cmd.Connection = con;
      // cmd.CommandType = CommandType.Text;
        con.Open();
    

        using (OracleDataReader reader = cmd.ExecuteReader())
        {
            GridView1.DataSource = reader;

            GridView1.DataBind();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String connection =  "Data Source=SAP;User Id=scott;Password=tiger;";
       String qry = "insert into stu values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
       OracleConnection con;
       OracleCommand cmd;
        con = new  OracleConnection(connection);
        cmd = new OracleCommand (qry,con);
        con.Open();

        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Record Inserted.";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String connection = "Data Source=SAP;User Id=scott;Password=tiger;";
         String qry = "update stu set sn='" + TextBox1.Text + "',sc='" + TextBox2.Text + "'";
        OracleConnection  con = new OracleConnection(connection);
        OracleCommand  cmd = new OracleCommand(qry, con);
        con.Open();
        cmd.ExecuteNonQuery();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        String connection = "Data Source=SAP;User Id=scott;Password=tiger;";
         String qry = "delete from stu where id='" + TextBox1.Text + "'";
        OracleConnection con = new OracleConnection(connection);
       OracleCommand cmd = new OracleCommand(qry, con);
        con.Open();
        cmd.ExecuteNonQuery(); 
        Response.Write("Deleted....");
    }
}
