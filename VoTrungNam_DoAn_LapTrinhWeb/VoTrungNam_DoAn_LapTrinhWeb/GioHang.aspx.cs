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
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["strcon"].ConnectionString);
                int id = int.Parse(Request.QueryString["id"].ToString());
                String strcmd = "select * from SANPHAM where ID ='" + id.ToString() + "'";
                SqlDataAdapter da1 = new SqlDataAdapter(strcmd, cn1);
                DataSet ds = new DataSet();
                da1.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string name = ds.Tables[0].Rows[0][2].ToString();
                    int gia = int.Parse(ds.Tables[0].Rows[0][6].ToString());
                    string hinh = ds.Tables[0].Rows[0][5].ToString();
                    int sl = 1;
                    GioHangCS buy = new GioHangCS();
                    buy = (GioHangCS)Session["buy"];
                    buy.InsertProduct(id, name, hinh, gia, sl);
                    Session["buy"] = buy;
                }
            }
            GioHangCS buy1 = (GioHangCS)Session["buy"];
            DataTable t = buy1.gioHang;
            GridView1.DataSource = t;
            GridView1.DataBind();
            Label1.Text = buy1.TongTien().ToString();
        }
    }
}