<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="VoTrungNam_DoAn_LapTrinhWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section  id="SPHomePage" class="main" style="width:740px">            
       <asp:DataList ID="DataList1" runat="server" RepeatColumns ="3" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table id="tbl-datalist" style="text-align:center">
                    <tr>
                        <td>
                            <asp:Image ID="Image3" runat="server" Height="89px" ImageUrl='<%# Eval("HINHANHVP") %>' Width="160px" />
                        </td>
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
                            <asp:Button CssClass="button-s" ID="Button1" runat="server" Text="Chi tiết" CommandName="View Detail" CommandArgument='<%# Eval("ID") %>' />
                        </td>
                    </tr>
                </table>                                     
            </ItemTemplate>
        </asp:DataList>
    </section>
<%--    <div class="more-btn">
        <button>Xem thêm</button>
    </div>--%>
</asp:Content>
