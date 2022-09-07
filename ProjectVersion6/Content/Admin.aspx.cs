using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Content_Admin : System.Web.UI.Page
{
    private string connectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool)Session["admin"])
        {
            Response.Redirect("http://localhost:54982/Content/Home2.aspx");
        }
        //printing the users table
        if (!IsPostBack)
        {
            //print the users table
            string SQLStr = "SELECT * FROM tblUsers";
            DataSet ds = RetrieveUsersTable(SQLStr);
            DataTable dt = ds.Tables[0];
            string table = BuildUsersTable(dt);
            tableDiv.InnerHtml = table;
        }
    }
    public DataSet RetrieveUsersTable(string SQLStr)
    {
        //connect to data base
        connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(connectionString);
        //build SQL query
        SqlCommand cmd = new SqlCommand();
        //build DataAdapter
        cmd.CommandText = SQLStr;
        cmd.Connection = con;
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        //build DataSet to store the data
        DataSet ds = new DataSet();
        ad.Fill(ds, "users");
        return ds;
    }
    public string BuildUsersTable(DataTable dt)
    {
        string str = "<table class='usersTable' align='center'>";
        str += "<tr>";
        str += "<td> </td>";
        //print the categories
        foreach (DataColumn column in dt.Columns)
        {
            str += "<td>" + column.ColumnName + "</td>";
        }
        //print users information
        foreach (DataRow row in dt.Rows)
        {
            str += "<tr>";
            str += "<td>" + CreateCheckBoxBtn(row["Username"].ToString()) + "</td>";
            foreach (DataColumn column in dt.Columns)
            {
                str += "<td>" + row[column] + "</td>";
            }
            str += "</tr>";
        }
        str += "</tr>";
        str += "</Table>";
        return str;
    }
    public string BuildSQLStr(string column, string str)
    {
        //builds an SQL query from the category and string that was searched  
        //all results
        if (str.Length == 0)
        {
            return "SELECT * FROM tblUsers";
        }
        //all three option results 
        else if (column == "All")
        {
            string SQLStr1 = $"SELECT * FROM tblUsers " +
                $"WHERE Username LIKE '%{str}%' OR Email LIKE '%{str}%' OR Password LIKE '%{str}%'";
            return SQLStr1;
        }
        //prticular option results 
        string SQLStr = $"SELECT * FROM tblUsers " +
            $"WHERE {column} LIKE '%{str}%'";
        return SQLStr;
    }
    public string BuildSQLStr2(string column, string order)
    {
        //builds an SQL query from the category and order that was searched 
        string SQLStr = $"SELECT * FROM tblUsers " +
            $"ORDER BY {column} {order}";
        return SQLStr;
    }
    public void ClickFilter(object sender, EventArgs e)
    {
        //search letters or words in a particular column
        string SQLStr = BuildSQLStr(Columns2.Value, Request.Form["filter"]);
        DataSet ds = RetrieveUsersTable(SQLStr);
        string table = BuildUsersTable(ds.Tables[0]);
        tableDiv.InnerHtml = table;
    }
    public void Click_Sort(object sender, EventArgs e)
    {
        //sort the table by a particular column by asc or desc
        string SQLStr = BuildSQLStr2(Columns.Value, Request.Form["order"]);
        DataSet ds = RetrieveUsersTable(SQLStr);
        string table = BuildUsersTable(ds.Tables[0]);
        tableDiv.InnerHtml = table;
    }
    public string CreateCheckBoxBtn(string username)
    {
        //returns the checked users
        return $"<input type='checkbox' name='chk{username}' id='chk{username}' runat='server' />";
    }
    public void Delete(object sender, EventArgs e)
    {
        //connect to data base
        connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(connectionString);
        //loading the data
        string SQLStr = "SELECT * FROM tblUsers";
        SqlCommand cmd = new SqlCommand(SQLStr, con);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "tblUsers");
        //delete rows fron data set
        for(int i = 1; i < Request.Form.Count; i++)
        {
            if(Request.Form.AllKeys[i].Contains("chk"))
            {
                string username = Request.Form.AllKeys[i].Remove(0, 3);
                DataRow[] dr = ds.Tables["tblUsers"].Select("[Username] ='" + username + "'");
                dr[0].Delete();
            }
        }
        //data set update to data base
        SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
        adapter.UpdateCommand = builder.GetDeleteCommand();
        adapter.Update(ds, "tblUsers");
        //print updated table
        string table = BuildUsersTable(ds.Tables["tblUsers"]);
        tableDiv.InnerHtml = table;
    }
    public void Edit(object sender, EventArgs e)
    {
        //redirected to the chosen user's edit page
        for (int i = 1; i < Request.Form.Count; i++)
        {
            if (Request.Form.AllKeys[i].Contains("chk"))
            {
                Session["userToUpdate"] = Request.Form.AllKeys[i].Remove(0, 3);
                Response.Redirect("http://localhost:54982/Content/Edit.aspx");
            }
        }
    }
}