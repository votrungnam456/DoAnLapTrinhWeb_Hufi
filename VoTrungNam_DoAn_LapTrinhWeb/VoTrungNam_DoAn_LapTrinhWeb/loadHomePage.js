var SPTrangChu=[
    {
        hinh:'images/san_pham_1.jpg',
        ten:'sản phẩm 1',
        gia:'150',
        mota:'thiết kế san trọng'
    },
    {
        hinh:'images/san_pham_2.jpg',
        ten:'sản phẩm 2',
        gia:'150',
        mota:'thiết kế san trọng'
    },
    {
        hinh:'images/san_pham_3.jpg',
        ten:'sản phẩm 3',
        gia:'150',
        mota:'thiết kế san trọng'
    },
    {
        hinh:'images/san_pham_4.jpg',
        ten:'sản phẩm 4',
        gia:'150',
        mota:'thiết kế san trọng'
    },
    {
        hinh:'images/san_pham_5.jpg',
        ten:'sản phẩm 5',
        gia:'150',
        mota:'thiết kế san trọng'
    },
    {
        hinh:'images/san_pham_6.jpg',
        ten:'sản phẩm 6',
        gia:'150',
        mota:'thiết kế san trọng'
    },
    {
        hinh:'images/san_pham_7.jpg',
        ten:'sản phẩm 7',
        gia:'150',
        mota:'thiết kế san trọng'
    },
    {
        hinh:'images/san_pham_8.jpg',
        ten:'sản phẩm 8',
        gia:'150',
        mota:'thiết kế san trọng'
    },
    {
        hinh:'images/san_pham_9.jpg',
        ten:'sản phẩm 9',
        gia:'150',
        mota:'thiết kế san trọng'
    },
    {
        hinh:'images/san_pham_9.jpg',
        ten:'sản phẩm 10',
        gia:'150',
        mota:'thiết kế san trọng'
    }
]
//tự động load sản phẩm khi mở trang chủ
function loadHomepage(){
    let homepage = document.getElementById("SPHomePage");
    let count = 1;
    let sec = document.createElement("div");
    sec.setAttribute("class","sec")
    let div = document.createElement("div");
    div.setAttribute("class","para")
    //let para = document.getElementsByClassName('para');
    for(let i = 0; i < SPTrangChu.length ; i++){
        let name = "SPTrangChu"
        let img1 = document.createElement("img");
        img1.src=SPTrangChu[i].hinh
        let title = document.createElement("h3");
        title.setAttribute("class","id")
        let textTitle = document.createTextNode(SPTrangChu[i].ten);
        title.appendChild(textTitle);
        let mota = document.createElement("p");
        let textMota = document.createTextNode(SPTrangChu[i].mota);
        mota.appendChild(textMota);
        let btn = document.createElement("input");
        btn.setAttribute("class","button-s")
        btn.setAttribute("type","button")
        btn.setAttribute("title",SPTrangChu[i].ten)
        btn.setAttribute("value","Chi tiết")
        btn.setAttribute("onclick","getcontent_homepage(this.title)")
        div.appendChild(img1)
        div.appendChild(title)
        div.appendChild(mota)
        div.appendChild(btn)
        if(count%3==0||i == SPTrangChu.length){
            sec.appendChild(div)
            homepage.appendChild(sec)
            sec = document.createElement("div");
            sec.setAttribute("class","sec")
            div = document.createElement("div");
            div.setAttribute("class","para")
        }
count++;
    }
}

// let body = document.getElementById("load")
// body.addEventListener("load",loadHomepage())
loadHomepage();
// let object;
if(sessionStorage.getItem("user")== undefined){
   
}else
{
    let userPr = document.getElementById("userP")
    userPr.textContent=sessionStorage.getItem("user")
}
function getcontent_homepage(string){
    let back_btn = document.createElement("input");
    back_btn.setAttribute("class","button-s")
    back_btn.setAttribute("type","button")
    back_btn.setAttribute("value","Quay lại")
    back_btn.setAttribute("onclick","loadHomepage()")
    for(let i = 0 ; i < SPTrangChu.length ; i++){
        if(SPTrangChu[i].ten == string){
            object=SPTrangChu[i];
            break;
        }
    }
    let more_btn = document.getElementsByClassName("more-btn");
    more_btn[0].innerHTML = '';
    let homepage = document.getElementById("SPHomePage");
    homepage.innerHTML='';
    let table = document.createElement("table")
    let tr = document.createElement("tr");
    let td1=document.createElement("td");
    let img = document.createElement("img");
    img.setAttribute("class","hinhsp");
    img.src = object.hinh;
    td1.appendChild(img);
    tr.appendChild(td1);  
    let td2=document.createElement("td");
    let name_product = document.createTextNode(object.ten);
    let sub_product = document.createTextNode(object.mota);
    let price = document.createTextNode(object.gia);
    for(let i = 1 ; i <= 3; i++){
        let p = document.createElement("p");
        if(i==1) {
            p.appendChild(name_product);
            p.setAttribute("class","tensp")
        }
        else if(i==2) {
            p.appendChild(sub_product);
            p.setAttribute("class","motasp")
        }
        else{ 
            p.appendChild(price)
            p.setAttribute("class","giasp")
        }
        td2.appendChild(p)
    }
    tr.appendChild(td2)
    table.appendChild(tr);
    homepage.appendChild(table);
    // window.open("contentPageChiTiet.aspx"); 
    
}
// export {object};

