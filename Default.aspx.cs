using System;
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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Label1.Text = "Page is valid";

        }
    }
 protected  void vldconserve(Object source, ServerValidateEventArgs e)
    {
        try
        {
            int val = Int32.Parse(e.Value.Substring(0, 3));
            if (val % 7 == 0)
            {
                e.IsValid = true;

            }
            else
            {
                e.IsValid = false;
            }
        }
        catch
        {
            e.IsValid = false;
        }
    }
}
