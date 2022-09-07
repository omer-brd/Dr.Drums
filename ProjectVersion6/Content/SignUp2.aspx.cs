using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Content_SignUp2 : System.Web.UI.Page
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
        //chekching the data and updating the new user to the table
        if (IsPostBack)
        {
            //create queries
            string SQLStr2 = $"SELECT COUNT (admin) FROM tblUsers " +
                $"WHERE Username = '{Request.Form["username"]}'";
            string SQLStr3 = $"SELECT COUNT (admin) FROM tblUsers " +
                $"WHERE Email = '{Request.Form["email"]}'";
            int count = (int)GetScalar(SQLStr2);
            int count2 = (int)GetScalar(SQLStr3);
            //checks if there is no another user with the same username
            if (count > 0)
            {
                usernameVal.InnerHtml = "this username is taken";
            }
            //checks if there is no another user with the same email
            else if (count2 > 0)
            {
                emailVal.InnerHtml = "this email is taken";
            }
            else
            {
                //connect to data base
                connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(connectionString);
                //build SQL query
                string SQLStr = $"SELECT * FROM tblUsers WHERE 0=1";
                SqlCommand cmd = new SqlCommand(SQLStr, con);
                //build DataSet
                DataSet ds = new DataSet();
                //loading the data
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds, "users");
                //building new row
                DataRow dr = ds.Tables["users"].NewRow();
                dr["Username"] = Request.Form["username"];
                dr["Email"] = Request.Form["email"];
                dr["Password"] = Request.Form["password"];
                dr["Admin"] = false;
                dr["Birthday"] = Request.Form["birthday"];
                dr["Phone"] = Request.Form["phone"];
                dr["FavMusic"] = Request.Form["music"];
                dr["Gender"] = Request.Form["gender"];
                ds.Tables["users"].Rows.Add(dr);
                //data set update to data base
                SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
                adapter.UpdateCommand = builder.GetInsertCommand();
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