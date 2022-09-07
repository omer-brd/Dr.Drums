using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Content_PasswordReset2 : System.Web.UI.Page
{
    private string connectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["logout"] != null)
        {
            Session["username"] = "Guest";
            Session["login"] = false;
            Application["visitors"] = (int)Application["visitors"] - 1;
            Response.Redirect("http://localhost:54982/Content/Home2.aspx");
        }
        //chekching the data and updating the new password to the table
        if (IsPostBack)
        {
            //create queries
            string SQLStr = $"SELECT COUNT (admin) FROM tblUsers " +
                $"WHERE Username = '{Request.Form["username"]}'";
            string SQLStr2 = $"SELECT COUNT (admin) FROM tblUsers " +
                $"WHERE Username = '{Request.Form["username"]}' AND FavMusic = '{Request.Form["music"]}'";
            int count = (int)GetScalar(SQLStr);
            int count2 = (int)GetScalar(SQLStr2);
            //checks if there is no another user with the same username
            if (count == 0)
            {
                usernameVal.InnerHtml = "this username does not exist";
            }
            //checks if there is no another user with the same email
            else if (count2 == 0)
            {
                musicVal.InnerHtml = "the vertify question is incorrect";
            }
            else
            {
                //connect to data base
                connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(connectionString);
                //build SQL query
                string SQLStr3 = $"SELECT * FROM tblUsers WHERE Username='{Request.Form["username"]}'";
                SqlCommand cmd = new SqlCommand(SQLStr3, con);
                //loading data to data set
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds, "users");
                //building the new row to add
                DataRow dr = ds.Tables["users"].Rows[0];
                dr["Password"] = password.Value;
                //update data set in data base
                SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
                adapter.UpdateCommand = builder.GetUpdateCommand();
                adapter.Update(ds, "users");
                Response.Redirect("http://localhost:54982/Content/Home2.aspx");
            }
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