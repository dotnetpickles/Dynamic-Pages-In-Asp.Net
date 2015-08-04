using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class ContentPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadPage();
    }
    private void LoadPage()
    {
        string pageUrl = this.Page.RouteData.Values["PageUrl"].ToString();
        string connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

        using (SqlConnection sqlConn = new SqlConnection(connString))
        {
            using (SqlCommand sqlCmd = new SqlCommand())
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    sqlCmd.Parameters.AddWithValue("@PageUrl", pageUrl);
                    sqlCmd.Connection = sqlConn;
                    sqlCmd.CommandText = "dbo.GetPageContent";
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    DataSet ds = new DataSet();
                    sda.SelectCommand=sqlCmd;
                    sda.Fill(ds);
                    DataTable dt = ds.Tables[0];
                    sda.Fill(dt);
                    lblTitle.Text = dt.Rows[0]["Title"].ToString();
                    lblContent.Text = dt.Rows[0]["Content"].ToString();
                }
            }
        }
    }
}