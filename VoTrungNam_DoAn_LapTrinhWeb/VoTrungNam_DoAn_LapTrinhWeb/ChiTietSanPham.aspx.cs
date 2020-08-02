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
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from SANPHAM where ID = '" + Request.QueryString["id"] + "' ", cn1);

            DataSet ds = new DataSet();
            da.Fill(ds, "Products");

            DataList1.DataSource = ds.Tables["Products"];
            DataList1.DataBind();

            Random rnd = new Random();
            String rndNum1 = rnd.Next(1, 19).ToString();
            String rndNum2 = rnd.Next(24, 34).ToString();
            SqlDataAdapter da2 = new SqlDataAdapter("select top 5 * from SANPHAM where ID between " + rndNum1 + " and " + rndNum2, cn1);

            DataSet ds2 = new DataSet();
            da2.Fill(ds2, "Products");

            DataList2.DataSource = ds2.Tables["Products"];
            DataList2.DataBind();

            if (!IsPostBack)
            {
                GioHangCS buy = new GioHangCS();
                buy.CreateItem();
                Session["buy"] = buy;
            }
        }


    }
}