using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_Snares2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool)Session["login"])
        {
            Response.Redirect("http://localhost:54982/Content/Home2.aspx");
        }
    }
}