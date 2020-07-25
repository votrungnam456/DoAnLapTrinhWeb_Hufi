<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="VoTrungNam_DoAn_LapTrinhWeb.TinTuc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VTN Furniture - Tin Tức</title>
    <link rel="stylesheet" href="MasterPage7.css">
</head>
<body>
    <form id="form1" runat="server">
    <div id="load" class="container">
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
                          <p><a id="A1" href="#" style="text-decoration:none;color:white">Giỏ hàng</a></p>
                      </td>
                  </tr>
              </table>
            
          </div>
         
          <nav style="width:100%;">          
          <div  class="navi">
            <a class="key" style="color: red" href="Home.aspx">TRANG CHỦ</a>
            <a href="gioithieu.aspx">GIỚI THIỆU</a>
            <a class="sanpham" href="#">TIN TỨC</a>
            <a href="sanphammoi.aspx">SẢN PHẨM MỚI</a>           
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
        <div style="text-align:center">
            <h1>Tin Tức</h1>
        </div>
       <div style="margin:0 20% 0 20%">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td rowspan="4">
                            <asp:Image ID="Image3" runat="server" Height="239px" ImageUrl='<%# Eval("hinhanh") %>' Width="226px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label CssClass="tensp" ID="Label1" runat="server" Text='<%# Eval("tieude") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label CssClass="motasp" ID="Label2" runat="server" Text='<%# Eval("thongtin") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl='<%# Eval("link") %>'>Đọc thêm</asp:HyperLink>
                        </td>
                    </tr>
                </table>                                                            
            </ItemTemplate>
           </asp:DataList>
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
    </div>


    </form>
    <script src="SlideShow.js"></script>
    <script  src="loadHomePage.js"></script>
</body>
</html>
