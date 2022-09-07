using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Content_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["logout"] != null)
        {
            Session["username"] = "Guest";
            Session["login"] = false;
            Application["visitors"] = (int)Application["visitors"] - 1;
            Response.Redirect("http://localhost:54982/Content/Home2.aspx");
        }
        if (!(bool)Session["login"])
        {
            Response.Redirect("http://localhost:54982/Content/Home2.aspx");
        }
        if ((bool)Session["admin"])
        {
            adminDiv.Style.Add("display", "block");
        }
        else
        {
            adminDiv.Style.Add("display", "none");
        }
        //takes and inserts the user's data in the form
        if (!IsPostBack)
        {
            //connect to data base
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);
            //build SQL query
            string SQLStr;
            if ((bool)Session["Admin"])
                SQLStr = $"SELECT * FROM tblUsers WHERE Username='{(string)Session["userToUpdate"]}'";
            else
                SQLStr = $"SELECT * FROM tblUsers WHERE Username='{Session["username"]}'";
            SqlCommand cmd = new SqlCommand(SQLStr, con);
            //create data set
            DataSet ds = new DataSet();
            //loading the data
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds, "users");
            DataRow dr = ds.Tables["users"].Rows[0];
            //filling the form's fields
            if ((bool)Session["Admin"])
            {
                admin.Value = dr["Admin"].ToString();
            }
            username.Value = dr["Username"].ToString();
            email.Value = dr["Email"].ToString();
            password.Value = dr["Password"].ToString();
            birthday.Value = ((DateTime)(dr["birthday"])).ToString("yyy-MM-dd");
            phone.Value = dr["Phone"].ToString();
            music.Value = dr["FavMusic"].ToString();
            Session["user"] = dr["Username"].ToString();
            Session["email"] = dr["email"].ToString();
            if(dr["Gender"].ToString() == "male")
            {
                male.Checked = true;
            }
            else if (dr["Gender"].ToString() == "female")
            {
                female.Checked = true;
            }
            else
            {
                other.Checked = true;
            }
        }
        if (IsPostBack)
        //updating the users's data from the form
        {
            string SQLStr2 = $"SELECT COUNT (admin) FROM tblUsers " +
                $"WHERE Username = '{username.Value}'";
            string SQLStr3 = $"SELECT COUNT (admin) FROM tblUsers " +
                $"WHERE Email = '{email.Value}'";
            int count = (int)GetScalar(SQLStr2);
            int count2 = (int)GetScalar(SQLStr3);
            //checks if there is no another user with the same username except the user himself
            if (count > 0 && (string)Session["user"] != username.Value)
            {
                usernameVal.InnerHtml = "this username is taken";
            }
            //checks if there is no another user with the same email except the user himself
            else if (count2 > 0 && (string)Session["email"] != email.Value)
            {
                emailVal.InnerHtml = "this email is taken";
            }
            else
            {
                //connect to data base
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(connectionString);
                //build SQL query
                string SQLStr;
                if ((bool)Session["Admin"])
                    SQLStr = $"SELECT * FROM tblUsers WHERE Username='{(string)Session["userToUpdate"]}'";
                else
                    SQLStr = $"SELECT * FROM tblUsers WHERE Username='{Session["username"]}'";
                SqlCommand cmd = new SqlCommand(SQLStr, con);
                //loading data to data set
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds, "users");
                //building the new row to add
                DataRow dr = ds.Tables["users"].Rows[0];
                if ((bool)Session["Admin"])
                {
                    dr["Admin"] = admin.Value;
                }
                dr["Username"] = username.Value;
                dr["Email"] = email.Value;
                dr["Password"] = password.Value;
                dr["Birthday"] = DateTime.Parse(birthday.Value);
                dr["Phone"] = phone.Value;
                dr["FavMusic"] = music.Value;
                if (male.Value != null)
                    dr["Gender"] = "male";
                else if (female.Value != null)
                    dr["Gender"] = "female";
                else
                    dr["Gender"] = "other";
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
