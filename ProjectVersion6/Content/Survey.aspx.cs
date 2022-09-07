using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_Survey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            container.Style.Add("display", "block");
            statistics.Style.Add("display", "none");
        }
        //taking the surveyws results
        if(IsPostBack)
        {
            //job
            if(role.Value == "Student")
                Application["Student"] = (int)Application["Student"] + 1;
            if (role.Value == "FullTimeJob")
                Application["FullTimeJob"] = (int)Application["FullTimeJob"] + 1;
            if (role.Value == "FullTimeLearner")
                Application["FullTimeLearner"] = (int)Application["FullTimeLearner"] + 1;
            //music
            if (mostlike.Value == "Rock")
                Application["Rock"] = (int)Application["Rock"] + 1;
            if (mostlike.Value == "Pop")
                Application["Pop"] = (int)Application["Pop"] + 1;
            if (mostlike.Value == "Metal")
                Application["Metal"] = (int)Application["Metal"] + 1;
            if (mostlike.Value == "Jazz")
                Application["Jazz"] = (int)Application["Jazz"] + 1;
            if (mostlike.Value == "Electronic")
                Application["Electronic"] = (int)Application["Electronic"] + 1;
            if (mostlike.Value == "Funk")
                Application["Funk"] = (int)Application["Funk"] + 1;
            if (mostlike.Value == "Reggae")
                Application["Reggae"] = (int)Application["Reggae"] + 1;
            if (mostlike.Value == "Hip Hop")
                Application["Hip Hop"] = (int)Application["Hip Hop"] + 1;
            //type
            if (Both.Checked)
                Application["Both"] = (int)Application["Both"] + 1;
            if (Acoustic.Checked)
                Application["Acoustic"] = (int)Application["Acoustic"] + 1;
            if (Electronic2.Checked)
                Application["Electronic2"] = (int)Application["Electronic2"] + 1;
            //company
            if (Pearl.Checked)
                Application["Pearl"] = (int)Application["Pearl"] + 1;
            if (DW.Checked)
                Application["DW"] = (int)Application["DW"] + 1;
            if (Ludwig.Checked)
                Application["Ludwig"] = (int)Application["Ludwig"] + 1;
            if (Tama.Checked)
                Application["Tama"] = (int)Application["Tama"] + 1;
            if (Gretsch.Checked)
                Application["Gretsch"] = (int)Application["Gretsch"] + 1;
            if (Sonor.Checked)
                Application["Sonor"] = (int)Application["Sonor"] + 1;
            //reaveling the survey's results
            if (Request.Form["submit"] != null)
            {
                container.Style.Add("display", "none");
                statistics.Style.Add("display", "block");
            }
        }
    }
}