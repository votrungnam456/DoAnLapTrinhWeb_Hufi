//var SPTrangChu=[
//    {
//        hinh:'images/san_pham_1.jpg',
//        ten:'sản phẩm 1',
//        gia:'120.000.000',
//        mota:'thiết kế san trọng'
//    },
//    {
//        hinh:'images/san_pham_2.jpg',
//        ten:'sản phẩm 2',
//        gia:'150.000.000',
//        mota:'thiết kế san trọng'
//    },
//    {
//        hinh:'images/san_pham_3.jpg',
//        ten:'sản phẩm 3',
//        gia:'300.000.000',
//        mota:'thiết kế san trọng'
//    },
//    {
//        hinh:'images/san_pham_4.jpg',
//        ten:'sản phẩm 4',
//        gia:'100.000.000',
//        mota:'thiết kế san trọng'
//    },
//    {
//        hinh:'images/san_pham_5.jpg',
//        ten:'sản phẩm 5',
//        gia:'150.000.000',
//        mota:'thiết kế san trọng'
//    },
//    {
//        hinh:'images/san_pham_6.jpg',
//        ten:'Bộ nội thất hoàng gia',
//        gia:'100.000.000',
//        mota:'thiết kế san trọng'
//    },
//    {
//        hinh:'images/san_pham_7.jpg',
//        ten:'Bộ salon cao cấp',
//        gia:'70.000.000',
//        mota:'thiết kế san trọng'
//    },
//    {
//        hinh:'images/san_pham_8.jpg',
//        ten:'Bộ nội thất san trọng',
//        gia:'80.000.000',
//        mota:'thiết kế san trọng'
//    },
//    {
//        hinh:'images/san_pham_9.jpg',
//        ten:'Bộ nội thất gia đình 2-3 người',
//        gia:'50.000.000',
//        mota:'thiết kế san trọng'
//    },
//]
////tự động load sản phẩm khi mở trang chủ

//function loadHomepage(){
//    var homepage = document.getElementById("SPHomePage");
//    homepage.innerHTML="";
//    homepage.style.display="flex"
//    //let para = document.getElementsByClassName('para');
//    for(let i = 0; i < SPTrangChu.length ; i++){
//        let sec = document.createElement("div");
//        sec.setAttribute("class","sec")
//        let div = document.createElement("div");
//        div.setAttribute("class","para")
//        let name = "SPTrangChu"
//        let img1 = document.createElement("img");
//        img1.src=SPTrangChu[i].hinh
//        let title = document.createElement("h3");
//        title.setAttribute("class","id")
//        let textTitle = document.createTextNode(SPTrangChu[i].ten);
//        title.appendChild(textTitle);
//        let mota = document.createElement("p");
//        let textMota = document.createTextNode(SPTrangChu[i].gia+ ".đ");
//        mota.appendChild(textMota);
//        let btn = document.createElement("input");
//        btn.setAttribute("class","button-s")
//        btn.setAttribute("type","button")
//        btn.setAttribute("title",SPTrangChu[i].ten)
//        btn.setAttribute("value","Chi tiết")
//        btn.setAttribute("onclick","getcontent_homepage(this.title)")
//        div.appendChild(img1)
//        div.appendChild(title)
//        div.appendChild(mota)
//        div.appendChild(btn)

//        sec.appendChild(div)
//        homepage.appendChild(sec)
//        // if(count%3==0||i == SPTrangChu.length){
//        //     sec.appendChild(div)
//        //     homepage.appendChild(sec)
//        //     sec = document.createElement("div");
//        //     sec.setAttribute("class","sec")
//        //     div = document.createElement("div");
//        //     div.setAttribute("class","para")
//        // }

//    }
//}

//// let body = document.getElementById("load")
//// body.addEventListener("load",loadHomepage())
//loadHomepage();
// let object;
//Lưu tên người đăng nhập
let userPr = document.getElementById("userP")
if(sessionStorage.getItem("userPrs")== undefined){
    userPr.innerHTML="Đăng nhập"
}else
{    
    userPr.innerHTML=sessionStorage.getItem("userPrs") 
    userPr.setAttribute("href","#")
}
userPr.addEventListener("click",function(){
    if(sessionStorage.getItem("userPrs")== undefined){
        userPr.setAttribute("href","signin.html")
    }
    else{
        sessionStorage.removeItem("userPrs")
        userPr.innerHTML="Đăng nhập"
    }
})
//lấy chi biết của sản phẩm
//function getcontent_homepage(string){

//    let back_btn = document.createElement("input");
//    back_btn.setAttribute("class","button-back")
//    back_btn.setAttribute("type","button")
//    back_btn.setAttribute("value","Quay lại")
//    back_btn.setAttribute("onclick","loadHomepage()")
//    for(let i = 0 ; i < SPTrangChu.length ; i++){
//        if(SPTrangChu[i].ten == string){
//            object=SPTrangChu[i];
//            break;
//        }
//    }
//    let homepage = document.getElementById("SPHomePage");
//    homepage.innerHTML="";
//    homepage.style.display="block"
//    let table = document.createElement("table")
//    let tr = document.createElement("tr");
//    let td1=document.createElement("td");
//    let img = document.createElement("img");
//    img.setAttribute("class","hinhsp");
//    img.src = object.hinh;
//    td1.appendChild(img);
//    tr.appendChild(td1);  
//    let td2=document.createElement("td");
//    let name_product = document.createTextNode(object.ten);
//    let sub_product = document.createTextNode(object.mota);
//    let price = document.createTextNode(object.gia);
//    for(let i = 1 ; i <= 3; i++){
//        let p = document.createElement("p");
//        if(i==1) {
//            p.appendChild(name_product);
//            p.setAttribute("class","tensp")
//        }
//        else if(i==2) {
//            p.appendChild(sub_product);
//            p.setAttribute("class","motasp")
//        }
//        else{ 
//            p.appendChild(price)
//            p.setAttribute("class","giasp")
//        }
//        td2.appendChild(p)
//    }
//    tr.appendChild(td2)
//    table.appendChild(tr);
//    homepage.appendChild(back_btn);
//    homepage.appendChild(table);
//    // window.open("contentPageChiTiet.aspx"); 
    
//}
// export {object};

