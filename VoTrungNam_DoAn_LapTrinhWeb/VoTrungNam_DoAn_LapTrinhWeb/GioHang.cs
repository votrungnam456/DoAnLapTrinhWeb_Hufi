using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
namespace VoTrungNam_DoAn_LapTrinhWeb
{
    public class GioHangCS
    {
        public DataTable gioHang = new DataTable();
        public void CreateItem()
        {
            gioHang.Columns.Add("ID", typeof(String));
            gioHang.Columns.Add("TenSP", typeof(String));
            gioHang.Columns.Add("HINHANHVP", typeof(String));
            gioHang.Columns.Add("GiaCa", typeof(int));
            gioHang.Columns.Add("NumberhaveSale", typeof(int));
        }
        public Boolean InsertProduct(int IDProduct, string name, string hinh, int gia, int NumberhaveSale)
        {
            Boolean flag = false;
            foreach (DataRow d in gioHang.Rows)
            {
                if (int.Parse(d[0].ToString()) == IDProduct)
                {
                    d[4] = int.Parse(d[4].ToString()) + NumberhaveSale;
                    flag = true;
                }
            }
            if (flag == false)
            {
                DataRow dong = gioHang.NewRow();
                dong[0] = IDProduct;
                dong[1] = name;
                dong[2] = hinh;
                dong[3] = gia;
                dong[4] = NumberhaveSale;
                gioHang.Rows.Add(dong);
                return true;
            }
            return false;
        }
        public int TongTien()
        {
            int a = 0;
            foreach (DataRow d in gioHang.Rows)
            {
                a = a + int.Parse(d[3].ToString()) * int.Parse(d[4].ToString());
            }
            return a;
        }
    }
}
