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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random rnd = new Random();
            String rndNum1 = rnd.Next(1, 16).ToString();
            String rndNum2 = rnd.Next(24, 34).ToString();
            SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select top 9 * from SANPHAM where ID between "+rndNum1 +" and " + rndNum2, cn1);
            if (Request.QueryString["LoaiSP"] != null)
            {
                da = new SqlDataAdapter("select top 9 * from SANPHAM where LOAISP = '" + Request.QueryString["LoaiSP"] + "' ", cn1);
            }
            DataSet ds = new DataSet();
            da.Fill(ds, "Products");

            DataList1.DataSource = ds.Tables["Products"];
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                Response.Redirect("ChiTietSanPham.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from SANPHAM ", cn1);
            if (Request.QueryString["LoaiSP"] != null)
            {
                da = new SqlDataAdapter("select * from SANPHAM where LOAISP = '" + Request.QueryString["LoaiSP"] + "' ", cn1);
            }
            DataSet ds = new DataSet();
            da.Fill(ds, "Products");

            DataList1.DataSource = ds.Tables["Products"];
            DataList1.DataBind();
            Button2.Style.Add("Display", "none");
        }





    }
}