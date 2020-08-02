<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="VoTrungNam_DoAn_LapTrinhWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section  id="SPHomePage" class="main" style="width:740px;min-height:630px">            
       <asp:DataList  ID="DataList1" runat="server" RepeatColumns ="3" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table id="tbl-datalist">
                    <tr>
                        <td>
                            <asp:Image ID="Image3" runat="server" Height="110px" ImageUrl='<%# Eval("HINHANHVP") %>' Width="183px" />
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="id">
                            <asp:Label ID="Label2" runat="server" Text='<%# string.Format("{0:N0}", Eval("GIACA"))+ " đồng" %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="button-s"><a href='ChiTietSanPham.aspx?ID=<%# Eval("ID") %>'>Chi tiết</a></button>
                        </td>
                    </tr>
                </table>                                     
            </ItemTemplate>
        </asp:DataList>

    </section>
    <div style="margin-left:50%">
        <table>
            <tr>
                <td>
                    <asp:Button CssClass="nut-bam" ID="Button2" runat="server" Text="Xem Thêm" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
<%--    <div class="more-btn">
        <button>Xem thêm</button>
    </div>--%>
</asp:Content>
