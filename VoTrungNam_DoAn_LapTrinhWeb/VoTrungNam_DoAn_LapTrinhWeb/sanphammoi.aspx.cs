using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace VoTrungNam_DoAn_LapTrinhWeb
{
    public partial class sanphammoi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from SANPHAM where DATEDIFF(DAY,NGAYNHAP,GETDATE()) <= 90", cn1);
            DataSet ds = new DataSet();
            da.Fill(ds, "Products");
            DataList1.DataSource = ds.Tables["Products"];
            DataList1.DataBind();
        }
    }
}