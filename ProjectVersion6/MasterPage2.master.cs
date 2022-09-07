using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ban1.Style.Add("display", "none");
        if (Request.Form["logout"] != null)
        {
            Application["loginvisitors"] = (int)Application["loginvisitors"] - 1;
        }
        if (IsPostBack)
        {
            string SQLStr = $"SELECT Admin FROM tblUsers " +
                $"WHERE Username = '{Request.Form["username"]}' AND Password = '{Request.Form["password"]}'";
            //return admin value
            object scalar = GetScalar(SQLStr);
            if(scalar != null)
            {
                Session["username"] = Request.Form["username"];
                Session["login"] = true;
                Session["admin"] = (bool)scalar;
                Response.Redirect("Home2.aspx");
            }
            else
            {
                Session["username"] = "Guest";
                Session["login"] = false;
                Session["admin"] = false;
            }
        }
        if (!(bool)Session["login"])
        {
            bar2.Style.Add("display", "none");
            bar3.Style.Add("display", "none");
            bar4.Style.Add("display", "none");
            log.Style.Add("display", "block");
            logout.Style.Add("display", "none");
            wellcome2.Style.Add("display", "none");
        }
        else
        {
            bar2.Style.Add("display", "block");
            bar3.Style.Add("display", "none");
            bar4.Style.Add("display", "block");
            log.Style.Add("display", "none");
            logout.Style.Add("display", "block");
            wellcome2.Style.Add("display", "block");
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
        if ((bool)Session["ban"])
        {
            ban1.Style.Add("display", "block");
            log.Style.Add("display", "none");
            logout.Style.Add("display", "none");
        }
    }
    public object GetScalar(string SQLStr)
    {
        //connect to data base
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(connectionString);
        //building SQL query
        SqlCommand cmd = new SqlCommand(SQLStr, con);
        //execute the query
        con.Open();
        object scalar = cmd.ExecuteScalar();
        con.Close();
        return scalar;
    }
}
