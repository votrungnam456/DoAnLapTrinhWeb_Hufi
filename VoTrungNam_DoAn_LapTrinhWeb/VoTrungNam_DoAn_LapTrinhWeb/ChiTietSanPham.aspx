<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="VoTrungNam_DoAn_LapTrinhWeb.ChiTietSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết sản phẩm</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="MasterPage7.css">
    <link rel="stylesheet" href="ChiTietSanPham.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <header>
                <div style="background-image: linear-gradient(white,red)" class="logo">
                    <table>
                        <tr>
                            <td>
                                <img class="logo" style="width: 100px; height: 80px" src="./images/logo.png" /></td>
                            <td style="text-align: center"><i><span>VTN Furniture nơi cung cấp sản phẩm chất lượng hàng đầu</span></i></td>
                            <td>
                                <asp:Image ID="Image1" runat="server" ImageUrl="./images/icon-user.png" Height="43px" Width="64px" />
                                <p><a id="userP" href="signin.html" style="text-decoration: none; color: white">Đăng nhập</a></p>
                            </td>
                            <td style="padding-left: 3%; width: 200px">
                                <asp:Image ID="Image2" runat="server" ImageUrl="./images/GioHang.jpg" Height="43px" Width="64px" />
                                <p><a id="A1" href="GioHang.aspx" style="text-decoration: none; color: white">Giỏ hàng</a></p>
                            </td>
                        </tr>
                    </table>

                </div>

                <nav style="width: 100%;">
                    <div class="navi">
                        <a href="Home.aspx">TRANG CHỦ</a>
                        <a href="gioithieu.aspx">GIỚI THIỆU</a>
                        <a href="TinTuc.aspx">TIN TỨC</a>
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
                <div style="text-align: center">
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                </div>
            </header>
            <div class="container-another-page">

                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td rowspan="5">
                                    <asp:Image ID="Image3" runat="server" Height="298px" ImageUrl='<%# Eval("HINHANHVP") %>' Width="339px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label CssClass="Detail_Name" ID="Label1" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("MOTA1") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("MOTA2") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label CssClass="Detail_Price" ID="Label2" runat="server" Text='<%# string.Format("{0:N0}", Eval("GIACA"))+ " đồng" %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="text-align: right"><button class="button-gh"><a href='GioHang.aspx?id=<%# Eval("ID")%>'>Mua hàng</a></button></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <div style="text-align: right">
                          
                </div>
            </div>
            <div class="container-another-page">
                <h2>Sản phẩm đề nghị</h2>         
                <asp:DataList CssClass="recomend" ID="DataList2" runat="server" RepeatColumns="5">
                    <ItemTemplate>
                        <table style="padding-left:10%">
                            <tr>
                                <td style="text-align: center">
                                    <asp:Image ID="Image4" runat="server" Height="119px" Width="154px" ImageUrl='<%# Eval("HINHANHVP") %>' /></td>
                            </tr>
                            <tr>
                                <td>
                                    <a href='ChiTietSanPham.aspx?ID=<%# Eval("ID") %>'>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <footer style="background-color: black; color: white">
                <div class="one">
                    <p>VTN Furniture</p>
                    <p>140 Lê Trọng Tấn, Tây Thạnh, Tân Phú, Hồ Chí Minh</p>
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
    <script src="loadHomePage.js"></script>
</body>
</html>
