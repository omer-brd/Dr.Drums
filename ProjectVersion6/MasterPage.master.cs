using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["logout"] != null)
        {
            Session["username"] = "Guest";
            Session["login"] = false;
            Application["loginvisitors"] = (int)Application["loginvisitors"] - 1;
            Response.Redirect("http://localhost:54982/Content/Home2.aspx");
        }
        if (!(bool)Session["login"])
        {
            bar2.Style.Add("display", "none");
            bar3.Style.Add("display", "none");
            bar4.Style.Add("display", "none");
            logout.Style.Add("display", "none");
        }
        else
        {
            bar2.Style.Add("display", "block");
            bar3.Style.Add("display", "none");
            bar4.Style.Add("display", "block");
            logout.Style.Add("display", "block");
        }
        if ((bool)Session["login"] && (bool)Session["admin"])
        {
            bar3.Style.Add("display", "block");
            bar4.Style.Add("display", "none");
        }
        else
        {
            bar3.Style.Add("display", "none");
        }
    }
    public DataSet RetrieveUsersTable(string SQLStr)
    {
        DataSet ds = new DataSet();
        //connecting to data set
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(connectionString);
        //building SQL query
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = SQLStr;
        cmd.Connection = con;
        //load the data
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }
}
