using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class AddPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string pageName = txtPageName.Text;
        string pageTitle = txtPageTitle.Text;
        string pageURL = pageTitle.Replace(" ", "-");
        string pageContent = txtContent.Text;

        string connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        using (SqlConnection sqlConn = new SqlConnection(connString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "dbo.AddToPages";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = sqlConn;

                cmd.Parameters.AddWithValue("@PageName", pageName);
                cmd.Parameters.AddWithValue("@PageUrl", pageURL);
                cmd.Parameters.AddWithValue("@Title", pageTitle);
                cmd.Parameters.AddWithValue("@Content", pageContent);
                sqlConn.Open();
                cmd.ExecuteNonQuery();
                sqlConn.Close();
            }
        }
    }
}