using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Content_Home2 : System.Web.UI.Page
{
    private string connectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        //set the false tries to 0
        if (!IsPostBack)
        {
            Session["tries"] = 0;
        }
        //check log in
        if (IsPostBack)
        {
            //creating new query
            string SQLStr = $"SELECT Admin FROM tblUsers " +
                $"WHERE Username = '{Request.Form["username"]}' AND Password = '{Request.Form["password"]}'";
            //return admin value
            object scalar = GetScalar(SQLStr);
            //the user logged in
            if (scalar != null)
            {
                Application["loginvisitors"] = (int)Application["loginvisitors"] + 1;
                Session["tries"] = 0;
                Session["ban"] = false;
                Session["username"] = Request.Form["username"];
                Session["login"] = true;
                Session["admin"] = (bool)scalar;
                Response.Redirect("Home2.aspx");
            }
            //the user did not log in
            else
            {
                Session["tries"] = (int)Session["tries"] + 1;
                Session["username"] = "Guest";
                Session["login"] = false;
                Session["admin"] = false;
                //user directed to password reset
                if ((int)Session["tries"] == 5)
                {
                    Session["ban"] = true;
                    Response.Redirect("http://localhost:54982/Content/PasswordReset2.aspx");
                }
            }
        }
        if ((bool)Session["login"])
        {
            btns1.Style.Add("display", "block");
            btns2.Style.Add("display", "block");
            warning.Style.Add("display", "none");
        }
        else
        {
            btns1.Style.Add("display", "none");
            btns2.Style.Add("display", "none");
            warning.Style.Add("display", "block");
        }
    }
    public object GetScalar(string SQLStr)
    {
        //connect to data base
        connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
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