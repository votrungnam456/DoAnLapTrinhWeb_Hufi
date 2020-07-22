<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sanphammoi.aspx.cs" Inherits="VoTrungNam_DoAn_LapTrinhWeb.sanphammoi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VTN Furniture - Sản phẩm mới</title>
    <meta charset="utf-8" />
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
            <a  href="Home.aspx">TRANG CHỦ</a>
            <a href="gioithieu.aspx">GIỚI THIỆU</a>
            <a href="#">TIN TỨC</a>
            <a class="key" style="color: red" href="sanphammoi.aspx">SẢN PHẨM MỚI</a>           
            <a href="#">LIÊN HỆ</a>
          </nav>
           <div class="slideshow-container">
                <div class="mySlides fade">
                    <img src="images/NoiThatSlideShow.jpg">
                    <!-- <div class="text">Caption Text</div> -->
                </div>

                <div class="mySlides fade">
                    <img src="images/NoiThatSlideShow2.jpg">
                    <!-- <div class="text">Caption Two</div> -->
                </div>

                <div class="mySlides fade">
                    <img src="images/NoiThatSlideShow3.jpg">
                    <!-- <div class="text">Caption Three</div> -->
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
      <main>
       <section style="width:220px; margin-top: 25px;" class="sidebar">
        <div class="p-1">
           <h2>Mẫu Thiết Kế Mới</h2>
       <ul class="side-1">
           <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=VP">Văn phòng</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=PK">Phòng Khách</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=PN">Phòng Ngủ</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=PS">Phòng Sách</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=NV">Nhà Vườn</asp:HyperLink></li>
       </ul>
       </div>
       <div class="p-1">
            <h2>Nội Thất Cao Cấp</h2>
        <ul class="side-1">
            <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=SOFA">Sofa nệm da</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=TB">Tủ Bếp</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=GIUONG">Giường</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=DENTT">Đèn Trang Trí</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=BANAN">Bàn Ăn</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Home.aspx?LoaiSP=REMCUA">Rèm Cửa Cao Cấp</asp:HyperLink></li>
        </ul>
        </div>
       </section>
       <section  id="SPHomePage" class="main" style="width:740px">            
       <asp:DataList ID="DataList1" runat="server" RepeatColumns ="3">
            <ItemTemplate>
                <table id="tbl-datalist" style="text-align:center">
                    <tr>
                        <td>
                            <asp:Image ID="Image3" runat="server" Height="89px" ImageUrl='<%# Eval("HINHANHVP") %>' Width="160px" />                            
                            <asp:Image CssClass="newicon" ID="Image4" runat="server" Height="32px" ImageUrl="img/newicon.png" Width="38px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="id">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIACA")+ " đồng" %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button CssClass="button-s" ID="Button1" runat="server" Text="Chi tiết" CommandName="ViewDetail" CommandArgument='<%# Eval("ID") %>' />
                        </td>
                    </tr>
                </table>                                     
            </ItemTemplate>
        </asp:DataList>
    </section>
      </main>

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
    </form>
</body>
</html>
