<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="VoTrungNam_DoAn_LapTrinhWeb.GioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VTN Furniture - Giỏ Hàng</title>
    <link rel="stylesheet" href="MasterPage7.css">
</head>
<body>
<body>
    <form id="form1" runat="server">
    <div class="container">
      <header >
          <div style="background-image:linear-gradient(white,red)" class="logo">
              <table>
                  <tr >
                      <td><img class="logo" style="width:100px;height:80px" src="./images/logo.png"/></td>
                      <td style="text-align:center"><i><span>VTN Furniture nơi cung cấp sản phẩm chất lượng hàng đầu</span></i></td>
                      <td>
                          <asp:Image ID="Image1" runat="server" ImageUrl="./images/icon-user.png" Height="43px" Width="64px"/>
                          <p><a id="userP" href="signin.html" style="text-decoration:none;color:white">Đăng nhập</a></p>
                      </td>
                      <td style="padding-left:3%;width:200px">
                          <asp:Image ID="Image2" runat="server" ImageUrl="./images/GioHang.jpg" Height="43px" Width="64px"/>
                          <p><a id="A1" href="GioHang.aspx" style="text-decoration:none;color:white">Giỏ hàng</a></p>
                      </td>
                  </tr>
              </table>
            
          </div>
         
          <nav style="width:100%;">          
          <div  class="navi">
            <a href="Home.aspx">TRANG CHỦ</a>
            <a href="gioithieu.aspx">GIỚI THIỆU</a>
            <a href="#">TIN TỨC</a>
            <a class="sanpham" href="sanphammoi.aspx">SẢN PHẨM MỚI</a>       
            <a href="#">LIÊN HỆ</a>
          </nav>
          <div class="slideshow-container">
                <div class="mySlides fade">
                    <img src="images/NoiThatSlideShow.jpg">
                </div>

                <div class="mySlides fade">
                    <img src="images/NoiThatSlideShow2.jpg">
                </div>

                <div class="mySlides fade">
                    <img src="images/NoiThatSlideShow3.jpg">
                </div>
                <a class="prev" onclick="minusSlides()">&#10094;</a>
                <a class="next" onclick="plusSlides()">&#10095;</a>
        </div>
            <div style="text-align:center">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>
      </header>
    <div class="gridView-gioHang">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-right: 3px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Mã Sản Phẩm" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" />
                <asp:ImageField ControlStyle-Width="300px" ControlStyle-Height="300px" DataImageUrlField="HINHANHVP" HeaderText="Hình">
                </asp:ImageField>
                <asp:TemplateField HeaderText="Số lượng">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("NumberhaveSale") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="GiaCa" HeaderText="Đơn Giá" />
            </Columns>
        </asp:GridView>
        Tổng tiền:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> &nbsp; đồng
    </div>
    <div  class="gridView-gioHang">
        <table>
            <tr>
                <td>
                    <button class="button-gh"><a href="Home.aspx">Mua tiếp</a></button>
                    <button class="button-gh"><a href="#">Thanh toán</a></button>
                </td>
            </tr>
        </table>
    </div>
    <footer style="background-color: black; color:white">
          <div class="one" >
              <P>VTN Furniture</P>
              <P>140 Lê Trọng Tấn, Tây Thạnh, Tân Phú, Hồ Chí Minh</P>
              <p>Điện thoại: 070319XXXX</p>
          </div>
          <div class="two" style="width: 220px">
              <img src="images//twit.png">
              <img src="images//f.png">
              <img src="images//g.png">
          </div>
      </footer>
    </form>
    <script src="SlideShow.js"></script>
    <script  src="loadHomePage.js"></script>
</body>
</html>
