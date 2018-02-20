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

using System.Drawing;


public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AdRotator rotator = new AdRotator();

        // Set the control's properties.
        rotator.AdvertisementFile = "AdRotatorFiles.xml";

        // Add the control to the Controls collection of a 
        // PlaceHolder control.  
        PlaceHolder1.Controls.Add(rotator);
    }
   
}
