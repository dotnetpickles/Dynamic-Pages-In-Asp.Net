using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class PageList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        using (SqlConnection sqlConn = new SqlConnection(connString))
        {
            using (SqlCommand sqlCmd = new SqlCommand())
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    sqlCmd.Connection = sqlConn;
                    sqlCmd.CommandText = "dbo.GetAllPages";
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    DataSet ds = new DataSet();
                    sda.SelectCommand = sqlCmd;
                    sda.Fill(ds);
                    if(ds.Tables.Count>0)
                    {
                        DataTable dt = ds.Tables[0];
                        grdPageList.DataSource = dt;
                        grdPageList.DataBind();
                    }
                }
            }
        }
    }
}