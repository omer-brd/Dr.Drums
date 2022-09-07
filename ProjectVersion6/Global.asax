<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["loginvisitors"] = 0;
        Application["totalvisitors"] = 0;
        Application["Student"] = 0;
        Application["FullTimeJob"] = 0;
        Application["FullTimeLearner"] = 0;
        Application["Rock"] = 0;
        Application["Pop"] = 0;
        Application["Metal"] = 0;
        Application["Jazz"] = 0;
        Application["Electronic"] = 0;
        Application["Funk"] = 0;
        Application["Reggae"] = 0;
        Application["Hip Hop"] = 0;
        Application["Both"] = 0;
        Application["Acoustic"] = 0;
        Application["Electronic2"] = 0;
        Application["Pearl"] = 0;
        Application["DW"] = 0;
        Application["Ludwig"] = 0;
        Application["Tama"] = 0;
        Application["Gretsch"] = 0;
        Application["Sonor"] = 0;
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Session["ban"] = false;
        Session["username"] = "Guest";
        Session["login"] = false;
        Application["totalvisitors"] = (int)Application["totalvisitors"] + 1;
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
    }

</script>
